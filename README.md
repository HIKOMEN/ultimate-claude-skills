# Ultimate Claude Skills Pack

A portable collection of 11 focused Agent Skills for software engineering, game development, asset pipelines, automation, debugging, and project continuity.

## Included skills

| Skill | Purpose |
|---|---|
| `ultimate-orchestrator` | Coordinates specialist skills and end-to-end work |
| `roblox-luau-master` | Roblox Studio, Luau, replication, security, and performance |
| `unreal-fmodel-analyst` | Unreal exports, FModel JSON, Blueprints, and bulk data |
| `blender-usd-pipeline` | Blender, USD/USDA, meshes, materials, UVs, and textures |
| `movement-physics-engineer` | First-person movement, parkour, momentum, wall-running, and camera physics |
| `debugger-code-reviewer` | Root-cause debugging, minimal fixes, and regression checks |
| `autonomous-project-operator` | High-autonomy execution with checkpoints and safe recovery |
| `game-lighting-specialist` | Dynamic lighting, baked lightmaps, and atmosphere reconstruction |
| `game-audio-engineer` | Audio extraction, validation, sound design, and Roblox integration |
| `python-automation-engineer` | Safe batch processing and repeatable automation |
| `project-memory-documentation` | Architecture, decisions, asset manifests, changelogs, and handoffs |

## Claude.ai installation

Claude.ai custom skills are uploaded as ZIP files. Each ZIP must contain one skill folder with its `SKILL.md` inside it.

1. Download this repository using **Code → Download ZIP**, or clone it.
2. Run the ZIP builder described below to create one archive per skill.
3. In Claude, open **Customize → Skills → + Create skill → Upload a skill**.
4. Upload the desired ZIP and enable the skill.
5. Repeat for each Claude account that should use the skills.

**Important:** A GitHub link does not automatically install a Skill into Claude.ai. Each account generally needs its own upload unless an organization uses admin-managed skill deployment.

### Build individual Skill ZIPs (Windows PowerShell)

From the repository root, run:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\build-skill-zips.ps1
```

The archives will be created in `dist\`, one ZIP per skill.

## Claude Code installation

Clone this repository, then run:

```powershell
git clone https://github.com/HIKOMEN/ultimate-claude-skills.git
cd ultimate-claude-skills
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

This copies the skill folders into `%USERPROFILE%\.claude\skills\`.

For project-only installation:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1 -Scope Project -ProjectPath "C:\path\to\your\project"
```

The installer preserves unrelated skill folders. If a skill with the same name already exists, its matching files are updated from this repository; back up local customizations first.

## Suggested prompt

> Read the Ultimate Orchestrator skill and use relevant specialist skills automatically. First inspect my current project and available tools. Work autonomously on safe, reversible tasks, test meaningful changes, and report verified results. Do not make destructive or external changes without approval.

## Safety and scope

These skills are operating instructions, not additional permissions or capabilities. They do not bypass plan limits, tool access, authentication, licensing, or platform restrictions. External publishing, destructive changes, purchases, account actions, and security-sensitive operations require explicit approval. Only inspect assets and software you are authorized to access.

## Version

1.0.0
