# Ultimate Claude Skills Pack

A portable set of 11 focused Agent Skills for software engineering, game development, asset pipelines, automation, debugging, and project continuity.

## Included skills

1. `ultimate-orchestrator` — coordinates the other skills and manages end-to-end work.
2. `roblox-luau-master` — Roblox Studio, Luau, replication, security, and performance.
3. `unreal-fmodel-analyst` — Unreal Engine exports, FModel JSON, Blueprints, and bulk data.
4. `blender-usd-pipeline` — Blender, USD/USDA, meshes, materials, UVs, and textures.
5. `movement-physics-engineer` — first-person movement, parkour, momentum, wall-running, and camera physics.
6. `debugger-code-reviewer` — root-cause debugging, minimal fixes, and regression checks.
7. `autonomous-project-operator` — high-autonomy task execution with checkpoints and safe recovery.
8. `game-lighting-specialist` — dynamic lighting, baked lightmaps, and atmosphere reconstruction.
9. `game-audio-engineer` — audio extraction, validation, sound design, and Roblox integration.
10. `python-automation-engineer` — safe batch processing and repeatable automation.
11. `project-memory-documentation` — architecture, decisions, asset manifests, changelogs, and handoffs.

## Claude.ai installation

Claude.ai custom skills are uploaded as ZIP files. Each skill folder must be zipped with its `SKILL.md` at the top level inside that skill folder.

- Open **Customize → Skills → + Create skill → Upload a skill**.
- Create a ZIP containing the selected skill folder and its `SKILL.md`.
- Enable the skills you want to use.
- Ensure code execution and file creation are enabled if Claude asks for this prerequisite.

A GitHub repository link is useful for sharing and versioning, but Claude.ai does not automatically install every skill just because a chat receives a repository URL. Each Claude account generally needs its own upload unless your organization has an admin-managed Team/Enterprise skill deployment.

## Claude Code installation

Clone this repository, then run the PowerShell installer:

```powershell
git clone https://github.com/HIKOMEN/ultimate-claude-skills.git
cd ultimate-claude-skills
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

The installer copies all skill folders into `%USERPROFILE%\.claude\skills\`. Restart Claude Code or reload skills afterwards.

For project-only installation, use:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Scope Project -ProjectPath "C:\path\to\your\project"
```

## Suggested prompt after installing

> Read the Ultimate Orchestrator skill and use the relevant specialist skills automatically. First inspect my current project and available tools. Do not make destructive or external changes without approval. Work autonomously on safe, reversible tasks, test each meaningful change, and report verified results.

## Safety and scope

These skills are operating instructions, not a grant of additional permissions or capabilities. They do not bypass plan limits, tool access, authentication, licensing, or platform restrictions. External publishing, destructive changes, purchases, account actions, and security-sensitive operations require explicit approval. Use reverse-engineering guidance only for assets and software you are authorized to inspect.

## Version

1.0.0
