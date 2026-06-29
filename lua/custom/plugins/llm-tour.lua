-- llm-tour: LLM-narrated audio walkthrough of a PR, driven from nvim.
-- Local dev plugin living at ~/Projects/Zig/llm-tour. Only enabled on hosts
-- where that checkout exists (i.e. hws), so syncing this nvim repo to the Mac
-- won't try to load it there.
local dir = vim.fn.expand '~/Projects/Zig/llm-tour'
return {
  dir = dir,
  enabled = vim.fn.isdirectory(dir) == 1,
  lazy = false,
  config = function()
    require('llm-tour').setup {
      -- Kokoro voice (sherpa-onnx) — far more natural than piper. Needs the
      -- model bundle: run voices/get-kokoro.sh once. Voice via KOKORO_SID.
      synth = dir .. '/bin/kokoro-say.sh',
      -- Stream narration to the Mac over the reverse SSH tunnel (ssh -R 7777).
      -- Drop this line to play locally instead (afplay/pw-play, auto by OS).
      play = dir .. '/bin/play-ssh.sh',
    }
  end,
}
