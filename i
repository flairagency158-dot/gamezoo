<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Gamezoo — Play Free Games Daily</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Fredoka:wght@400;500;600;700&family=Inter:wght@400;500;600&display=swap');

*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

:root {
  --bg: #0e0e16;
  --surface: #16161f;
  --surface2: #1e1e2e;
  --border: #2a2a3a;
  --text: #f0f0ff;
  --muted: #6b6b8a;
  --yellow: #ffd93d;
  --pink: #ff6b9d;
  --cyan: #4dd9ff;
  --green: #6bffb8;
  --purple: #b06bff;
  --orange: #ff9f43;
}

body.light-mode {
  --bg: #f5f5fa;
  --surface: #ffffff;
  --surface2: #eeeef8;
  --border: #d0d0e0;
  --text: #111122;
  --muted: #7777aa;
}

body {
  font-family: 'Inter', sans-serif;
  background: var(--bg);
  color: var(--text);
  min-height: 100vh;
  transition: background 0.2s, color 0.2s;
}

/* NAV */
nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0 1.5rem;
  height: 64px;
  background: var(--surface);
  border-bottom: 1px solid var(--border);
  position: sticky;
  top: 0;
  z-index: 200;
  gap: 0.75rem;
  flex-wrap: wrap;
}

.logo {
  font-family: 'Fredoka', sans-serif;
  font-size: 1.8rem;
  font-weight: 700;
  color: var(--yellow);
  letter-spacing: -0.02em;
  display: flex;
  align-items: center;
  gap: 6px;
  cursor: pointer;
}
.logo-dot { color: var(--pink); }

.nav-links {
  display: flex;
  gap: 1.2rem;
  list-style: none;
}
.nav-links a {
  color: var(--muted);
  text-decoration: none;
  font-size: 0.85rem;
  font-weight: 500;
  transition: color 0.15s;
  cursor: pointer;
}
.nav-links a:hover, .nav-links a.active { color: var(--text); }

.nav-tools { margin-left: 0.5rem; }

.search-input {
  width: 200px;
  padding: 0.55rem 0.9rem;
  border-radius: 999px;
  border: 1px solid var(--border);
  background: var(--surface2);
  color: var(--text);
  font-size: 0.85rem;
  outline: none;
  transition: border-color 0.15s;
}
.search-input:focus { border-color: var(--cyan); }

.nav-streak {
  display: flex;
  align-items: center;
  gap: 6px;
  background: var(--surface2);
  border: 1px solid var(--border);
  padding: 6px 14px;
  border-radius: 20px;
  font-size: 0.8rem;
  font-weight: 600;
  color: var(--orange);
}

.nav-actions { display: flex; align-items: center; gap: 0.5rem; }

.nav-btn {
  background: rgba(255,255,255,0.08);
  border: 1px solid var(--border);
  color: var(--text);
  padding: 0.45rem 0.8rem;
  border-radius: 999px;
  font-size: 0.8rem;
  cursor: pointer;
  transition: background 0.15s, transform 0.15s;
  white-space: nowrap;
}
.nav-btn:hover { background: rgba(255,255,255,0.14); transform: translateY(-1px); }
.nav-btn.register { background: var(--yellow); color: #0e0e16; border-color: transparent; }
.nav-btn.logout { background: rgba(255,107,157,0.12); color: var(--pink); }
.nav-btn.profile-btn { background: rgba(176,107,255,0.15); color: var(--purple); }

.nav-user { display: flex; align-items: center; gap: 0.4rem; }

.theme-btn {
  background: none;
  border: 1px solid var(--border);
  color: var(--muted);
  width: 34px; height: 34px;
  border-radius: 50%;
  cursor: pointer;
  font-size: 1rem;
  display: flex; align-items: center; justify-content: center;
  transition: background 0.15s;
}
.theme-btn:hover { background: var(--surface2); }

/* CATEGORY TABS */
.cat-tabs {
  display: flex;
  gap: 0.5rem;
  padding: 1rem 2rem 0;
  max-width: 1200px;
  margin: 0 auto;
  flex-wrap: wrap;
}
.cat-tab {
  background: var(--surface2);
  border: 1px solid var(--border);
  color: var(--muted);
  padding: 0.35rem 1rem;
  border-radius: 999px;
  font-size: 0.8rem;
  cursor: pointer;
  transition: all 0.15s;
  font-weight: 500;
}
.cat-tab:hover, .cat-tab.active {
  background: var(--yellow);
  color: #0e0e16;
  border-color: transparent;
}

/* AD BANNER */
.ad-banner {
  background: var(--surface2);
  border-bottom: 1px solid var(--border);
  display: flex;
  align-items: center;
  justify-content: center;
  height: 90px;
  color: var(--muted);
  font-size: 0.72rem;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  position: relative;
}
.ad-banner::before {
  content: 'Advertisement';
  position: absolute;
  top: 6px; left: 12px;
  font-size: 0.6rem;
  color: var(--border);
  letter-spacing: 0.1em;
}
.ad-banner-inner {
  width: 728px; height: 60px;
  border: 1px dashed var(--border);
  border-radius: 4px;
  display: flex; align-items: center; justify-content: center;
  color: var(--muted);
  font-size: 0.75rem;
}

/* HERO */
.hero {
  padding: 2.5rem 2rem 1.5rem;
  text-align: center;
  max-width: 700px;
  margin: 0 auto;
}
.hero-label {
  display: inline-block;
  background: rgba(255,217,61,0.12);
  color: var(--yellow);
  font-size: 0.72rem;
  font-weight: 600;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  padding: 4px 12px;
  border-radius: 20px;
  margin-bottom: 1rem;
  border: 1px solid rgba(255,217,61,0.2);
}
.hero h1 {
  font-family: 'Fredoka', sans-serif;
  font-size: 2.8rem;
  font-weight: 700;
  line-height: 1.1;
  margin-bottom: 0.75rem;
}
.hero h1 span { color: var(--yellow); }
.hero p { color: var(--muted); font-size: 0.95rem; line-height: 1.6; }

/* DAILY CHALLENGE */
.daily-banner {
  max-width: 1200px;
  margin: 1.5rem auto;
  padding: 0 2rem;
}
.daily-card {
  background: linear-gradient(135deg, #1a1a2e 0%, #16213e 50%, #0f3460 100%);
  border: 1px solid var(--cyan);
  border-radius: 16px;
  padding: 1.5rem 2rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  box-shadow: 0 0 40px rgba(77,217,255,0.08);
}
.daily-info h2 { font-family: 'Fredoka', sans-serif; font-size: 1.3rem; color: var(--cyan); margin-bottom: 4px; }
.daily-info p { font-size: 0.82rem; color: var(--muted); }
.daily-timer {
  font-family: 'Fredoka', sans-serif;
  font-size: 2rem;
  color: var(--cyan);
  letter-spacing: 0.05em;
  min-width: 120px;
  text-align: center;
}
.daily-timer small {
  display: block;
  font-size: 0.6rem;
  color: var(--muted);
  letter-spacing: 0.1em;
  text-transform: uppercase;
  font-family: 'Inter', sans-serif;
}
.btn-play-daily {
  background: var(--cyan);
  color: #0e0e16;
  border: none;
  padding: 0.75rem 1.8rem;
  border-radius: 10px;
  font-family: 'Fredoka', sans-serif;
  font-size: 1.1rem;
  font-weight: 600;
  cursor: pointer;
  transition: transform 0.1s, box-shadow 0.1s;
  white-space: nowrap;
}
.btn-play-daily:hover { transform: translateY(-2px); box-shadow: 0 8px 20px rgba(77,217,255,0.3); }

/* GAMES GRID */
.section { max-width: 1200px; margin: 0 auto; padding: 2rem; }
.section-header { display: flex; align-items: center; gap: 0.75rem; margin-bottom: 1.25rem; }
.section-header h2 { font-family: 'Fredoka', sans-serif; font-size: 1.4rem; font-weight: 600; }
.section-header .dot { width: 8px; height: 8px; border-radius: 50%; background: var(--yellow); }

.games-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(190px, 1fr));
  gap: 1rem;
}

.game-card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 12px;
  overflow: hidden;
  cursor: pointer;
  transition: transform 0.15s, border-color 0.15s;
  position: relative;
}
.game-card:hover { transform: translateY(-4px); border-color: var(--yellow); }
.game-card .fav-btn {
  position: absolute;
  top: 8px; left: 8px;
  background: rgba(0,0,0,0.5);
  border: none;
  border-radius: 50%;
  width: 28px; height: 28px;
  font-size: 0.9rem;
  cursor: pointer;
  display: flex; align-items: center; justify-content: center;
  z-index: 2;
  transition: transform 0.15s;
}
.game-card .fav-btn:hover { transform: scale(1.2); }

.game-thumb {
  height: 120px;
  display: flex; align-items: center; justify-content: center;
  font-size: 3rem;
  position: relative;
}
.game-thumb-snake { background: linear-gradient(135deg, #1a4a1a, #0a2a0a); }
.game-thumb-flappy { background: linear-gradient(135deg, #1a3a4a, #0a1a2a); }
.game-thumb-memory { background: linear-gradient(135deg, #3a1a4a, #1a0a2a); }
.game-thumb-type { background: linear-gradient(135deg, #4a3a1a, #2a1a0a); }
.game-thumb-click { background: linear-gradient(135deg, #4a1a1a, #2a0a0a); }
.game-thumb-dodge { background: linear-gradient(135deg, #1a4a3a, #0a2a1a); }
.game-thumb-wordle { background: linear-gradient(135deg, #1a3a1a, #2a4a0a); }
.game-thumb-2048 { background: linear-gradient(135deg, #3a2a1a, #4a3a0a); }
.game-thumb-whack { background: linear-gradient(135deg, #2a1a3a, #3a0a4a); }

.game-badge {
  position: absolute;
  top: 8px; right: 8px;
  font-size: 0.6rem; font-weight: 600;
  padding: 2px 7px;
  border-radius: 10px;
  letter-spacing: 0.05em;
  text-transform: uppercase;
}
.badge-hot { background: rgba(255,107,157,0.2); color: var(--pink); border: 1px solid rgba(255,107,157,0.3); }
.badge-new { background: rgba(107,255,184,0.2); color: var(--green); border: 1px solid rgba(107,255,184,0.3); }
.badge-daily { background: rgba(77,217,255,0.2); color: var(--cyan); border: 1px solid rgba(77,217,255,0.3); }

.game-info { padding: 0.75rem 1rem; }
.game-name { font-family: 'Fredoka', sans-serif; font-size: 1rem; font-weight: 600; margin-bottom: 2px; }
.game-meta { font-size: 0.72rem; color: var(--muted); display: flex; align-items: center; gap: 0.5rem; flex-wrap: wrap; }
.game-rating { color: var(--yellow); }
.game-personal-best { font-size: 0.68rem; color: var(--green); margin-top: 2px; }

/* AD SIDEBAR */
.layout-with-ad {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 2rem 2rem;
  display: grid;
  grid-template-columns: 1fr 160px;
  gap: 1.5rem;
  align-items: start;
}
.ad-sidebar {
  background: var(--surface2);
  border: 1px dashed var(--border);
  border-radius: 8px;
  height: 600px;
  display: flex; flex-direction: column;
  align-items: center; justify-content: center;
  gap: 0.5rem;
  position: sticky;
  top: 80px;
}
.ad-sidebar span { font-size: 0.6rem; color: var(--border); letter-spacing: 0.1em; text-transform: uppercase; writing-mode: vertical-rl; }

/* GAME MODAL */
.modal-overlay {
  position: fixed;
  inset: 0;
  background: rgba(0,0,0,0.85);
  z-index: 300;
  display: flex; align-items: center; justify-content: center;
  padding: 1rem;
  backdrop-filter: blur(4px);
}
.modal {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 16px;
  width: 100%;
  max-width: 580px;
  overflow: hidden;
  max-height: 90vh;
  overflow-y: auto;
}
.modal-header {
  padding: 1rem 1.5rem;
  border-bottom: 1px solid var(--border);
  display: flex; align-items: center; justify-content: space-between;
  position: sticky; top: 0;
  background: var(--surface);
  z-index: 10;
}
.modal-header h3 { font-family: 'Fredoka', sans-serif; font-size: 1.3rem; color: var(--yellow); }
.modal-header-btns { display: flex; gap: 0.5rem; align-items: center; }
.btn-close {
  background: none; border: none; color: var(--muted);
  font-size: 1.5rem; cursor: pointer; line-height: 1; padding: 0 4px;
}
.btn-close:hover { color: var(--text); }
.btn-fullscreen {
  background: rgba(255,255,255,0.08);
  border: 1px solid var(--border);
  color: var(--muted);
  font-size: 0.95rem;
  width: 32px; height: 32px;
  border-radius: 8px;
  cursor: pointer;
  display: flex; align-items: center; justify-content: center;
  transition: background 0.15s;
}
.btn-fullscreen:hover { background: var(--surface2); color: var(--text); }

/* Fullscreen modal */
.modal-overlay.fullscreen-mode {
  padding: 0;
}
.modal-overlay.fullscreen-mode .modal {
  max-width: 100%;
  width: 100%;
  height: 100%;
  max-height: 100%;
  border-radius: 0;
  border: none;
}

.modal-ad {
  background: var(--surface2);
  border-bottom: 1px solid var(--border);
  height: 50px;
  display: flex; align-items: center; justify-content: center;
  font-size: 0.6rem; color: var(--border);
  letter-spacing: 0.1em; text-transform: uppercase; gap: 0.5rem;
}

/* SNAKE */
#snakeCanvas { display: block; background: #0a0f0a; width: 100%; }

.game-controls {
  padding: 1rem 1.5rem;
  display: flex; align-items: center; justify-content: space-between;
  border-top: 1px solid var(--border);
}
.score-display { font-family: 'Fredoka', sans-serif; font-size: 1.1rem; color: var(--green); }
.score-display small { display: block; font-size: 0.65rem; color: var(--muted); font-family: 'Inter', sans-serif; }
.btn-restart {
  background: var(--yellow); color: #0e0e16;
  border: none; padding: 0.5rem 1.2rem;
  border-radius: 8px;
  font-family: 'Fredoka', sans-serif; font-size: 1rem; font-weight: 600;
  cursor: pointer; transition: transform 0.1s;
}
.btn-restart:hover { transform: scale(1.04); }

.dpad {
  display: grid;
  grid-template-columns: repeat(3, 40px);
  grid-template-rows: repeat(3, 40px);
  gap: 4px; margin: 0.5rem auto; width: fit-content;
}
.dpad-btn {
  background: var(--surface2); border: 1px solid var(--border);
  border-radius: 8px; color: var(--text);
  font-size: 1rem; cursor: pointer;
  display: flex; align-items: center; justify-content: center;
  transition: background 0.1s;
}
.dpad-btn:active { background: var(--border); }
.dpad-up { grid-column: 2; grid-row: 1; }
.dpad-left { grid-column: 1; grid-row: 2; }
.dpad-center { grid-column: 2; grid-row: 2; background: none; border: none; }
.dpad-right { grid-column: 3; grid-row: 2; }
.dpad-down { grid-column: 2; grid-row: 3; }

/* LEADERBOARD */
.leaderboard {
  background: var(--surface2);
  border: 1px solid var(--border);
  border-radius: 12px;
  overflow: hidden;
  margin-top: 2rem;
}
.leaderboard-header {
  padding: 1rem 1.5rem;
  border-bottom: 1px solid var(--border);
  display: flex; align-items: center; gap: 0.5rem;
}
.leaderboard-header h3 { font-family: 'Fredoka', sans-serif; font-size: 1.1rem; color: var(--yellow); }
.lb-tabs { display: flex; gap: 0.5rem; margin-left: auto; }
.lb-tab {
  background: var(--surface); border: 1px solid var(--border);
  color: var(--muted); padding: 3px 10px; border-radius: 999px;
  font-size: 0.72rem; cursor: pointer; transition: all 0.15s;
}
.lb-tab.active { background: var(--yellow); color: #0e0e16; border-color: transparent; }
.leaderboard-row {
  display: flex; align-items: center;
  padding: 0.75rem 1.5rem;
  border-bottom: 1px solid var(--border);
  gap: 1rem; font-size: 0.85rem;
  transition: background 0.1s;
}
.leaderboard-row:last-child { border-bottom: none; }
.leaderboard-row:hover { background: rgba(255,255,255,0.02); }
.lb-rank { font-family: 'Fredoka', sans-serif; font-size: 1rem; color: var(--muted); width: 24px; text-align: center; }
.lb-rank.gold { color: var(--yellow); }
.lb-rank.silver { color: #c0c0c0; }
.lb-rank.bronze { color: #cd7f32; }
.lb-name { flex: 1; font-weight: 500; }
.lb-score { font-family: 'Fredoka', sans-serif; font-size: 1rem; color: var(--green); }
.lb-game { font-size: 0.72rem; color: var(--muted); }

/* ACHIEVEMENTS */
.achievements-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px,1fr));
  gap: 0.75rem;
  padding: 1.5rem;
}
.achievement {
  background: var(--surface2);
  border: 1px solid var(--border);
  border-radius: 10px;
  padding: 1rem;
  text-align: center;
  transition: border-color 0.15s;
}
.achievement.unlocked { border-color: var(--yellow); }
.achievement.locked { opacity: 0.4; filter: grayscale(1); }
.achievement-icon { font-size: 2rem; margin-bottom: 0.4rem; }
.achievement-name { font-family: 'Fredoka', sans-serif; font-size: 0.9rem; color: var(--text); margin-bottom: 2px; }
.achievement-desc { font-size: 0.68rem; color: var(--muted); }

/* WORDLE */
#wordleBoard {
  display: flex; flex-direction: column;
  gap: 6px;
  padding: 1rem 1.5rem;
  align-items: center;
}
.wordle-row { display: flex; gap: 6px; }
.wordle-cell {
  width: 52px; height: 52px;
  border: 2px solid var(--border);
  border-radius: 6px;
  display: flex; align-items: center; justify-content: center;
  font-family: 'Fredoka', sans-serif;
  font-size: 1.5rem; font-weight: 700;
  text-transform: uppercase;
  transition: background 0.3s, border-color 0.3s;
  color: var(--text);
}
.wordle-cell.correct { background: #538d4e; border-color: #538d4e; color: white; }
.wordle-cell.present { background: #b59f3b; border-color: #b59f3b; color: white; }
.wordle-cell.absent { background: var(--surface2); border-color: var(--border); color: var(--muted); }
.wordle-cell.active { border-color: var(--yellow); }

.wordle-keyboard {
  display: flex; flex-direction: column; gap: 6px;
  align-items: center;
  padding: 0 1.5rem 1rem;
}
.wordle-kb-row { display: flex; gap: 5px; }
.kb-key {
  background: var(--surface2); border: 1px solid var(--border);
  color: var(--text); border-radius: 6px;
  font-family: 'Fredoka', sans-serif; font-size: 0.9rem;
  padding: 0.5rem 0.6rem; min-width: 34px; height: 42px;
  cursor: pointer; transition: background 0.15s;
  display: flex; align-items: center; justify-content: center;
}
.kb-key:hover { background: var(--border); }
.kb-key.correct { background: #538d4e; border-color: #538d4e; color: white; }
.kb-key.present { background: #b59f3b; border-color: #b59f3b; color: white; }
.kb-key.absent { background: #3a3a4a; border-color: #3a3a4a; color: var(--muted); }
.kb-key.wide { min-width: 60px; font-size: 0.75rem; }

/* 2048 */
#g2048Board {
  display: grid;
  grid-template-columns: repeat(4,1fr);
  gap: 8px;
  padding: 1rem 1.5rem;
  background: var(--surface2);
  border-radius: 8px;
  margin: 1rem 1.5rem;
}
.t2048 {
  height: 70px;
  display: flex; align-items: center; justify-content: center;
  font-family: 'Fredoka', sans-serif; font-size: 1.4rem; font-weight: 700;
  border-radius: 8px;
  transition: background 0.1s;
}
.t2048-0 { background: var(--border); color: transparent; }
.t2048-2 { background: #eee4da; color: #776e65; }
.t2048-4 { background: #ede0c8; color: #776e65; }
.t2048-8 { background: #f2b179; color: white; }
.t2048-16 { background: #f59563; color: white; }
.t2048-32 { background: #f67c5f; color: white; }
.t2048-64 { background: #f65e3b; color: white; }
.t2048-128 { background: #edcf72; color: white; font-size: 1.2rem; }
.t2048-256 { background: #edcc61; color: white; font-size: 1.2rem; }
.t2048-512 { background: #edc850; color: white; font-size: 1.2rem; }
.t2048-1024 { background: #edc53f; color: white; font-size: 0.95rem; }
.t2048-2048 { background: #edc22e; color: white; font-size: 0.95rem; }

/* WHACK A MOLE */
#whackGrid {
  display: grid;
  grid-template-columns: repeat(3,1fr);
  gap: 12px;
  padding: 1rem 1.5rem;
}
.mole-hole {
  height: 100px;
  background: #2a1a0a;
  border-radius: 50% 50% 10px 10px;
  display: flex; align-items: flex-end; justify-content: center;
  overflow: hidden;
  position: relative;
  cursor: pointer;
  border: 2px solid #4a2a0a;
}
.mole {
  font-size: 2.5rem;
  transition: transform 0.15s;
  transform: translateY(100%);
  user-select: none;
  padding-bottom: 4px;
}
.mole.up { transform: translateY(0); }
.mole.bonked { transform: translateY(100%) scale(0.5); }

/* FLAPPY */
#flappyCanvas { display: block; width: 100%; background: #70c5ce; }

/* DODGE */
#dodgeCanvas { display: block; width: 100%; background: #0a0a1a; }

/* MODAL - AUTH */
.modal-content { padding: 1.5rem; }
.modal-content label { display: block; margin-bottom: 0.85rem; font-size: 0.82rem; color: var(--muted); }
.modal-content input, .modal-content textarea {
  width: 100%; margin-top: 0.35rem;
  padding: 0.85rem 0.9rem;
  border-radius: 12px; border: 1px solid var(--border);
  background: var(--surface2); color: var(--text); font-size: 0.95rem;
  outline: none;
}
.modal-content textarea { min-height: 88px; resize: vertical; }
.modal-content .auth-row { display: flex; gap: 0.75rem; flex-wrap: wrap; }
.modal-content .auth-row button { flex: 1; }
.modal-message { margin-bottom: 1rem; font-size: 0.85rem; color: var(--pink); }
.modal-note { margin-bottom: 1rem; color: var(--muted); font-size: 0.92rem; }

/* PROFILE PAGE */
#profilePage {
  max-width: 800px; margin: 2rem auto; padding: 0 2rem;
}
.profile-card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 16px;
  padding: 2rem;
  margin-bottom: 1.5rem;
}
.profile-header { display: flex; align-items: center; gap: 1.5rem; margin-bottom: 1.5rem; flex-wrap: wrap; }
.profile-avatar {
  width: 72px; height: 72px;
  background: linear-gradient(135deg, var(--purple), var(--cyan));
  border-radius: 50%;
  display: flex; align-items: center; justify-content: center;
  font-size: 2rem;
}
.profile-username { font-family: 'Fredoka', sans-serif; font-size: 1.8rem; color: var(--text); }
.profile-stats { display: flex; gap: 1.5rem; flex-wrap: wrap; margin-top: 0.5rem; }
.stat-item { text-align: center; }
.stat-val { font-family: 'Fredoka', sans-serif; font-size: 1.4rem; color: var(--yellow); }
.stat-label { font-size: 0.72rem; color: var(--muted); text-transform: uppercase; letter-spacing: 0.06em; }

/* COMMENTS */
.comments-section { padding: 1rem 1.5rem; border-top: 1px solid var(--border); }
.comments-section h4 { font-family: 'Fredoka', sans-serif; font-size: 1rem; color: var(--cyan); margin-bottom: 0.75rem; }
.comment { background: var(--surface2); border-radius: 8px; padding: 0.6rem 0.9rem; margin-bottom: 0.5rem; }
.comment-user { font-size: 0.75rem; color: var(--yellow); font-weight: 600; margin-bottom: 2px; }
.comment-text { font-size: 0.85rem; color: var(--text); }
.comment-input-row { display: flex; gap: 0.5rem; margin-top: 0.75rem; }
.comment-input {
  flex: 1; padding: 0.5rem 0.8rem;
  background: var(--surface2); border: 1px solid var(--border);
  border-radius: 8px; color: var(--text); font-size: 0.85rem; outline: none;
}
.comment-input:focus { border-color: var(--cyan); }
.btn-comment {
  background: var(--cyan); color: #0e0e16;
  border: none; padding: 0.5rem 1rem;
  border-radius: 8px; font-size: 0.85rem; font-weight: 600;
  cursor: pointer;
}

/* RATING */
.rating-star { background: none; border: none; color: var(--yellow); font-size: 1.2rem; cursor: pointer; transition: transform 0.1s; }
.rating-star:hover { transform: scale(1.2); }

/* FOOTER */
footer {
  background: var(--surface);
  border-top: 1px solid var(--border);
  padding: 2rem;
  text-align: center;
  color: var(--muted);
  font-size: 0.8rem;
  margin-top: 3rem;
}
footer .logo-small { font-family: 'Fredoka', sans-serif; font-size: 1.2rem; color: var(--yellow); margin-bottom: 0.5rem; }

.hidden { display: none !important; }

/* Toast */
.toast {
  position: fixed; bottom: 1.5rem; left: 50%; transform: translateX(-50%);
  background: var(--surface); border: 1px solid var(--border);
  color: var(--text); padding: 0.65rem 1.5rem;
  border-radius: 999px; font-size: 0.85rem;
  z-index: 9999; pointer-events: none;
  opacity: 0; transition: opacity 0.2s;
  box-shadow: 0 4px 24px rgba(0,0,0,0.4);
}
.toast.show { opacity: 1; }
</style>
</head>
<body>

<!-- NAV -->
<nav>
  <div class="logo" onclick="showPage('main')">🎮 Gamezoo<span class="logo-dot">.</span></div>
  <ul class="nav-links">
    <li><a onclick="showPage('main')" id="navGames">Games</a></li>
    <li><a onclick="scrollToLeaderboard()" id="navLB">Leaderboard</a></li>
    <li><a onclick="scrollToDaily()" id="navDaily">Daily</a></li>
    <li><a onclick="showPage('achievements')" id="navAch">Achievements</a></li>
    <li><a onclick="showPage('featured')" id="navFeatured">Featured</a></li>
  </ul>
  <div class="nav-tools">
    <input id="gameSearch" class="search-input" type="search" placeholder="Search games..." oninput="filterGames()" />
  </div>
  <div class="nav-actions">
    <button class="theme-btn" id="themeBtn" onclick="toggleTheme()" title="Toggle theme">🌙</button>
    <button class="nav-btn" id="loginBtn" onclick="showAuth('login')">Login</button>
    <button class="nav-btn register" id="registerBtn" onclick="showAuth('register')">Register</button>
    <div class="nav-user hidden" id="navUser">
      <span id="navUsername" style="font-size:0.82rem;color:var(--muted)"></span>
      <button class="nav-btn profile-btn" onclick="showPage('profile')">Profile</button>
      <button class="nav-btn" onclick="showUpload()">Upload</button>
      <button class="nav-btn logout" onclick="logout()">Logout</button>
    </div>
    <div class="nav-streak" id="navStreak">🔥 0 day streak</div>
  </div>
</nav>

<!-- AD BANNER TOP -->
<div class="ad-banner">
  <div class="ad-banner-inner">728 × 90 — Google AdSense Banner</div>
</div>

<!-- MAIN PAGE -->
<div id="mainPage">

<!-- HERO -->
<div class="hero">
  <div class="hero-label">🌍 100% Free · New games weekly</div>
  <h1>Play. <span>Compete.</span> Come back daily.</h1>
  <p>Bite-sized games you can finish in minutes. Daily challenges, global leaderboards, zero installs.</p>
</div>

<!-- DAILY CHALLENGE -->
<div class="daily-banner" id="dailySection">
  <div class="daily-card">
    <div class="daily-info">
      <h2>🐍 Daily Snake Challenge</h2>
      <p>Beat today's target of <strong style="color:var(--cyan)">42 points</strong> to earn your streak badge</p>
    </div>
    <div class="daily-timer" id="dailyTimer">--:--:--<small>resets in</small></div>
    <button class="btn-play-daily" onclick="openGame('snake')">Play Now →</button>
  </div>
</div>

<!-- CATEGORY TABS -->
<div class="cat-tabs">
  <button class="cat-tab active" onclick="filterCat('all',this)">🎮 All</button>
  <button class="cat-tab" onclick="filterCat('action',this)">⚡ Action</button>
  <button class="cat-tab" onclick="filterCat('puzzle',this)">🧩 Puzzle</button>
  <button class="cat-tab" onclick="filterCat('typing',this)">⌨️ Typing</button>
  <button class="cat-tab" onclick="filterCat('word',this)">📝 Word</button>
  <button class="cat-tab" onclick="filterCat('favorites',this)">❤️ Favorites</button>
</div>

<!-- GAMES + SIDEBAR -->
<div class="layout-with-ad">
  <div>
    <!-- HOT GAMES -->
    <div class="section" style="padding:1.5rem 0 2rem 0">
      <div class="section-header">
        <div class="dot" style="background:var(--pink)"></div>
        <h2>🔥 Hot Right Now</h2>
      </div>
      <div class="games-grid" id="builtinGrid">

        <div class="game-card built-in-card" data-cat="action" onclick="openGame('snake')">
          <button class="fav-btn" onclick="toggleFav(event,'snake')">🤍</button>
          <div class="game-thumb game-thumb-snake">
            🐍
            <span class="game-badge badge-daily">Daily</span>
          </div>
          <div class="game-info">
            <div class="game-name">Snake</div>
            <div class="game-meta"><span class="game-rating">★★★★★</span> · 12.4k plays</div>
            <div class="game-personal-best" id="pb-snake"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="puzzle" onclick="openGame('memory')">
          <button class="fav-btn" onclick="toggleFav(event,'memory')">🤍</button>
          <div class="game-thumb game-thumb-memory">
            🧠
            <span class="game-badge badge-hot">Hot</span>
          </div>
          <div class="game-info">
            <div class="game-name">Memory Match</div>
            <div class="game-meta"><span class="game-rating">★★★★☆</span> · 8.1k plays</div>
            <div class="game-personal-best" id="pb-memory"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="typing" onclick="openGame('typeracer')">
          <button class="fav-btn" onclick="toggleFav(event,'typeracer')">🤍</button>
          <div class="game-thumb game-thumb-type">
            ⌨️
            <span class="game-badge badge-new">New</span>
          </div>
          <div class="game-info">
            <div class="game-name">Type Racer</div>
            <div class="game-meta"><span class="game-rating">★★★★★</span> · 5.7k plays</div>
            <div class="game-personal-best" id="pb-typeracer"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="action" onclick="openGame('click')">
          <button class="fav-btn" onclick="toggleFav(event,'click')">🤍</button>
          <div class="game-thumb game-thumb-click">
            👆
          </div>
          <div class="game-info">
            <div class="game-name">Speed Click</div>
            <div class="game-meta"><span class="game-rating">★★★★☆</span> · 3.2k plays</div>
            <div class="game-personal-best" id="pb-click"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="word" onclick="openGame('wordle')">
          <button class="fav-btn" onclick="toggleFav(event,'wordle')">🤍</button>
          <div class="game-thumb game-thumb-wordle">
            📝
            <span class="game-badge badge-new">New</span>
          </div>
          <div class="game-info">
            <div class="game-name">Wordle</div>
            <div class="game-meta"><span class="game-rating">★★★★★</span> · 4.8k plays</div>
            <div class="game-personal-best" id="pb-wordle"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="puzzle" onclick="openGame('2048')">
          <button class="fav-btn" onclick="toggleFav(event,'2048')">🤍</button>
          <div class="game-thumb game-thumb-2048">
            🔢
            <span class="game-badge badge-hot">Hot</span>
          </div>
          <div class="game-info">
            <div class="game-name">2048</div>
            <div class="game-meta"><span class="game-rating">★★★★☆</span> · 6.3k plays</div>
            <div class="game-personal-best" id="pb-2048"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="action" onclick="openGame('whack')">
          <button class="fav-btn" onclick="toggleFav(event,'whack')">🤍</button>
          <div class="game-thumb game-thumb-whack">
            🔨
            <span class="game-badge badge-new">New</span>
          </div>
          <div class="game-info">
            <div class="game-name">Whack-a-Mole</div>
            <div class="game-meta"><span class="game-rating">★★★★☆</span> · 2.1k plays</div>
            <div class="game-personal-best" id="pb-whack"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="action" onclick="openGame('flappy')">
          <button class="fav-btn" onclick="toggleFav(event,'flappy')">🤍</button>
          <div class="game-thumb game-thumb-flappy">
            🐦
          </div>
          <div class="game-info">
            <div class="game-name">Flappy Bird</div>
            <div class="game-meta"><span class="game-rating">★★★★☆</span> · 2.9k plays</div>
            <div class="game-personal-best" id="pb-flappy"></div>
          </div>
        </div>

        <div class="game-card built-in-card" data-cat="action" onclick="openGame('dodge')">
          <button class="fav-btn" onclick="toggleFav(event,'dodge')">🤍</button>
          <div class="game-thumb game-thumb-dodge">
            💫
            <span class="game-badge badge-new">New</span>
          </div>
          <div class="game-info">
            <div class="game-name">Dodge!</div>
            <div class="game-meta"><span class="game-rating">★★★☆☆</span> · 1.1k plays</div>
            <div class="game-personal-best" id="pb-dodge"></div>
          </div>
        </div>

        <!-- FEATURED EMBED GAME -->
        <div class="game-card built-in-card" data-cat="action" onclick="openEmbedGame('featured1')">
          <div class="game-thumb" style="background:linear-gradient(135deg,#1a2a4a,#0a1a3a);">
            🕹️
            <span class="game-badge badge-new">New</span>
          </div>
          <div class="game-info">
            <div class="game-name">Featured Game</div>
            <div class="game-meta"><span class="game-rating">★★★★★</span> · Play now</div>
          </div>
        </div>

      </div>
    </div>

    <!-- COMMUNITY GAMES -->
    <div class="section" style="padding:0 0 2rem 0">
      <div class="section-header">
        <div class="dot" style="background:var(--green)"></div>
        <h2>🌐 Community Games</h2>
      </div>
      <div class="games-grid" id="publicGamesGrid"></div>
    </div>

    <!-- LEADERBOARD -->
    <div class="leaderboard" id="lbSection">
      <div class="leaderboard-header">
        <h3>🏆 Global Leaderboard</h3>
        <div class="lb-tabs">
          <button class="lb-tab active" onclick="renderLeaderboard('all',this)">All Games</button>
          <button class="lb-tab" onclick="renderLeaderboard('snake',this)">Snake</button>
          <button class="lb-tab" onclick="renderLeaderboard('click',this)">Click</button>
          <button class="lb-tab" onclick="renderLeaderboard('typeracer',this)">Type</button>
        </div>
      </div>
      <div id="lbBody"></div>
    </div>

  </div>

  <!-- SIDEBAR AD -->
  <div class="ad-sidebar">
    <span>Advertisement · 160×600</span>
  </div>
</div>

</div><!-- /mainPage -->

<!-- ACHIEVEMENTS PAGE -->
<div id="achievementsPage" class="hidden">
  <div style="max-width:900px;margin:2rem auto;padding:0 2rem">
    <div class="section-header" style="margin-bottom:1.5rem">
      <div class="dot" style="background:var(--yellow)"></div>
      <h2>🏅 Achievements</h2>
      <button onclick="showPage('main')" style="margin-left:auto;background:none;border:1px solid var(--border);color:var(--muted);padding:4px 12px;border-radius:999px;cursor:pointer;font-size:0.8rem">← Back</button>
    </div>
    <div class="achievements-grid" id="achievementsGrid"></div>
  </div>
</div>

<!-- PROFILE PAGE -->
<div id="profilePage" class="hidden">
  <div style="max-width:800px;margin:2rem auto;padding:0 2rem">
    <div style="display:flex;align-items:center;gap:1rem;margin-bottom:1.5rem">
      <button onclick="showPage('main')" style="background:none;border:1px solid var(--border);color:var(--muted);padding:6px 14px;border-radius:999px;cursor:pointer;font-size:0.8rem">← Back</button>
    </div>
    <div class="profile-card">
      <div class="profile-header">
        <div class="profile-avatar" id="profileAvatar">🎮</div>
        <div>
          <div class="profile-username" id="profileName">Guest</div>
          <div style="color:var(--muted);font-size:0.82rem;margin-top:4px" id="profileJoined"></div>
          <div class="profile-stats" id="profileStats"></div>
        </div>
      </div>
    </div>
    <div class="profile-card">
      <div class="section-header" style="margin-bottom:1rem"><div class="dot" style="background:var(--green)"></div><h2>🎯 Personal Bests</h2></div>
      <div id="profileBests"></div>
    </div>
    <div class="profile-card">
      <div class="section-header" style="margin-bottom:1rem"><div class="dot" style="background:var(--purple)"></div><h2>🏅 My Achievements</h2></div>
      <div id="profileAchievements" style="display:flex;flex-wrap:wrap;gap:0.5rem;"></div>
    </div>
    <div class="profile-card">
      <div class="section-header" style="margin-bottom:1rem"><div class="dot" style="background:var(--pink)"></div><h2>❤️ Favorited Games</h2></div>
      <div id="profileFavorites" style="display:flex;flex-wrap:wrap;gap:0.5rem;"></div>
    </div>
  </div>
</div>

<!-- FEATURED GAMES PAGE -->
<div id="featuredPage" class="hidden">
  <div style="max-width:900px;margin:2rem auto;padding:0 2rem">
    <div class="section-header" style="margin-bottom:1.5rem">
      <div class="dot" style="background:var(--cyan)"></div>
      <h2>🕹️ Featured Games</h2>
      <button onclick="showPage('main')" style="margin-left:auto;background:none;border:1px solid var(--border);color:var(--muted);padding:4px 12px;border-radius:999px;cursor:pointer;font-size:0.8rem">← Back</button>
    </div>

    <div style="background:var(--surface);border:1px solid var(--border);border-radius:16px;overflow:hidden;margin-bottom:2rem;">
      <div style="padding:1.25rem 1.5rem;border-bottom:1px solid var(--border);display:flex;align-items:center;gap:0.75rem;">
        <span style="font-size:1.5rem;">🕹️</span>
        <div>
          <div style="font-family:'Fredoka',sans-serif;font-size:1.2rem;color:var(--yellow);">Featured Game</div>
          <div style="font-size:0.8rem;color:var(--muted);">Browser game · No install needed</div>
        </div>
        <span class="game-badge badge-new" style="margin-left:auto;position:static;">New</span>
      </div>
      <div style="background:#000;display:flex;justify-content:center;align-items:center;">
        <iframe src="https://html5.gamedistribution.com/c4853541e0434d19a5bfdd8c75887cb5/?gd_sdk_referrer_url=https://www.example.com/games/featured1" width="450" height="800" scrolling="none" frameborder="0" style="display:block;max-width:100%;"></iframe>
      </div>
    </div>
  </div>
</div>

<!-- FOOTER -->
<footer>
  <div class="logo-small">🎮 Gamezoo.</div>
  <p>Free games, daily challenges, global leaderboards.</p>
  <p style="margin-top:0.5rem;font-size:0.7rem">© 2026 Gamezoo · Privacy · Terms</p>
</footer>

<!-- GAME MODAL -->
<div class="modal-overlay hidden" id="modalOverlay" onclick="closeIfBg(event)">
  <div class="modal" id="gameModal">
    <div class="modal-header">
      <h3 id="modalTitle">Game</h3>
      <div class="modal-header-btns">
        <button class="btn-fullscreen" onclick="toggleFullscreen()" title="Fullscreen">⛶</button>
        <button class="btn-close" onclick="closeModal()">✕</button>
      </div>
    </div>

    <div class="modal-ad">📢 Advertisement — Google AdSense 468×50</div>

    <!-- SNAKE GAME -->
    <div id="snakeGame" class="hidden">
      <canvas id="snakeCanvas" width="520" height="340"></canvas>
      <div style="padding:0 1rem 0.5rem;display:flex;justify-content:center;gap:4px">
        <button class="dpad-btn dpad-up" onclick="snakeDir(0,-1)">▲</button>
        <button class="dpad-btn dpad-left" onclick="snakeDir(-1,0)">◀</button>
        <button class="dpad-btn dpad-center"></button>
        <button class="dpad-btn dpad-right" onclick="snakeDir(1,0)">▶</button>
        <button class="dpad-btn dpad-down" onclick="snakeDir(0,1)">▼</button>
      </div>
      <div class="game-controls">
        <div class="score-display"><span id="snakeScore">0</span> pts<small>Best: <span id="snakeBest">0</span></small></div>
        <div style="font-size:0.72rem;color:var(--muted)">Arrow keys or D-pad</div>
        <button class="btn-restart" onclick="initSnake()">Restart</button>
      </div>
    </div>

    <!-- MEMORY GAME -->
    <div id="memoryGame" class="hidden" style="padding:1.5rem">
      <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:1rem">
        <div style="font-family:'Fredoka',sans-serif;font-size:1.1rem;color:var(--purple)">Pairs: <span id="memPairs">0</span>/8</div>
        <div style="font-size:0.82rem;color:var(--muted)">Moves: <span id="memMoves">0</span></div>
        <button class="btn-restart" onclick="initMemory()">New Game</button>
      </div>
      <div id="memBoard" style="display:grid;grid-template-columns:repeat(4,1fr);gap:8px;"></div>
    </div>

    <!-- TYPE RACER -->
    <div id="typeGame" class="hidden" style="padding:1.5rem">
      <div id="typeDisplay" style="font-size:1.1rem;line-height:1.8;margin-bottom:1rem;padding:1rem;background:var(--surface2);border-radius:8px;border:1px solid var(--border);min-height:80px"></div>
      <input id="typeInput" placeholder="Start typing..." style="width:100%;padding:0.75rem;background:var(--surface2);border:1px solid var(--border);border-radius:8px;color:var(--text);font-size:1rem;outline:none" oninput="checkType()" />
      <div class="game-controls">
        <div class="score-display"><span id="typeWPM">0</span> WPM<small>Words: <span id="typeWords">0</span></small></div>
        <button class="btn-restart" onclick="initType()">New Text</button>
      </div>
    </div>

    <!-- SPEED CLICK -->
    <div id="clickGame" class="hidden" style="padding:1.5rem;text-align:center">
      <div style="font-family:'Fredoka',sans-serif;font-size:1rem;color:var(--muted);margin-bottom:1rem">Click as fast as you can for 5 seconds!</div>
      <div id="clickTarget" onclick="handleClick()" style="width:200px;height:200px;background:var(--pink);border-radius:50%;margin:0 auto 1.5rem;display:flex;align-items:center;justify-content:center;cursor:pointer;font-size:3rem;transition:transform 0.05s;user-select:none;border:3px solid rgba(255,255,255,0.2)">👆</div>
      <div class="game-controls" style="justify-content:center;gap:2rem">
        <div class="score-display"><span id="clickCount">0</span> clicks<small>Time: <span id="clickTimer">5.0</span>s</small></div>
        <button class="btn-restart" onclick="initClick()">Play Again</button>
      </div>
    </div>

    <!-- WORDLE -->
    <div id="wordleGame" class="hidden">
      <div id="wordleMessage" style="text-align:center;padding:0.5rem;font-family:'Fredoka',sans-serif;font-size:1rem;min-height:28px;color:var(--cyan)"></div>
      <div id="wordleBoard"></div>
      <div class="wordle-keyboard" id="wordleKeyboard"></div>
      <div class="game-controls">
        <div class="score-display">Wins: <span id="wordleWins">0</span><small>Streak: <span id="wordleStreak">0</span></small></div>
        <button class="btn-restart" onclick="initWordle()">New Word</button>
      </div>
    </div>

    <!-- 2048 -->
    <div id="game2048" class="hidden">
      <div class="game-controls" style="border-bottom:1px solid var(--border);border-top:none">
        <div class="score-display">Score: <span id="score2048">0</span><small>Best: <span id="best2048">0</span></small></div>
        <div style="font-size:0.72rem;color:var(--muted)">Arrow keys / swipe</div>
        <button class="btn-restart" onclick="init2048()">New Game</button>
      </div>
      <div id="g2048Board"></div>
      <div id="msg2048" style="text-align:center;font-family:'Fredoka',sans-serif;font-size:1.2rem;padding:0.5rem;min-height:32px;color:var(--yellow)"></div>
    </div>

    <!-- WHACK A MOLE -->
    <div id="whackGame" class="hidden">
      <div class="game-controls" style="border-bottom:1px solid var(--border);border-top:none">
        <div class="score-display">Score: <span id="whackScore">0</span><small>Best: <span id="whackBest">0</span></small></div>
        <div class="score-display" style="color:var(--orange)">Time: <span id="whackTime">30</span>s</div>
        <button class="btn-restart" onclick="initWhack()">Start</button>
      </div>
      <div id="whackGrid"></div>
    </div>

    <!-- FLAPPY BIRD -->
    <div id="flappyGame" class="hidden">
      <canvas id="flappyCanvas" width="520" height="360"></canvas>
      <div class="game-controls">
        <div class="score-display"><span id="flappyScore">0</span> pts<small>Best: <span id="flappyBest">0</span></small></div>
        <div style="font-size:0.72rem;color:var(--muted)">Space / tap to flap</div>
        <button class="btn-restart" onclick="initFlappy()">Restart</button>
      </div>
    </div>

    <!-- DODGE -->
    <div id="dodgeGame" class="hidden">
      <canvas id="dodgeCanvas" width="520" height="360"></canvas>
      <div class="game-controls">
        <div class="score-display"><span id="dodgeScore">0</span> pts<small>Best: <span id="dodgeBest">0</span></small></div>
        <div style="font-size:0.72rem;color:var(--muted)">Arrow keys / WASD</div>
        <button class="btn-restart" onclick="initDodge()">Restart</button>
      </div>
    </div>

    <!-- FEATURED EMBED GAME -->
    <div id="featuredGame1" class="hidden">
      <iframe src="https://html5.gamedistribution.com/c4853541e0434d19a5bfdd8c75887cb5/?gd_sdk_referrer_url=https://www.example.com/games/featured1" width="100%" height="520" scrolling="none" frameborder="0" style="display:block;border:none;"></iframe>
    </div>

    <!-- COMMUNITY GAME -->
    <div id="externalGame" class="hidden" style="padding:1.5rem">
      <div style="display:flex;flex-direction:column;gap:1rem;">
        <div style="display:flex;justify-content:space-between;align-items:flex-start;gap:1rem;flex-wrap:wrap;">
          <div style="flex:1;min-width:220px;">
            <div id="externalGameTitle" style="font-family:'Fredoka',sans-serif;font-size:1.3rem;color:var(--yellow);"></div>
            <div id="externalGameDesc" style="font-size:0.92rem;color:var(--muted);margin-top:0.35rem;"></div>
          </div>
          <div style="text-align:right;min-width:180px;">
            <div style="font-size:0.82rem;color:var(--muted);margin-bottom:0.5rem">Rate this game</div>
            <div id="ratingStars" style="display:flex;justify-content:flex-end;gap:0.25rem;"></div>
            <div id="externalRatingMeta" style="color:var(--muted);font-size:0.82rem;margin-top:0.5rem"></div>
          </div>
        </div>
        <iframe id="externalFrame" style="width:100%;height:360px;border:1px solid var(--border);border-radius:14px;background:#000" sandbox="allow-scripts allow-same-origin allow-forms"></iframe>
        <img id="externalCover" src="" alt="Game cover" style="width:100%;max-width:420px;height:200px;object-fit:cover;border-radius:16px;border:1px solid var(--border);" class="hidden" />
        <div class="comments-section" id="commentsSection">
          <h4>💬 Comments</h4>
          <div id="commentsList"></div>
          <div class="comment-input-row" id="commentInputRow">
            <input class="comment-input" id="commentInput" placeholder="Write a comment..." />
            <button class="btn-comment" onclick="submitComment()">Send</button>
          </div>
          <div id="commentLoginNote" class="hidden" style="font-size:0.8rem;color:var(--muted);margin-top:0.5rem">Login to comment</div>
        </div>
      </div>
    </div>

  </div>
</div>

<!-- AUTH + UPLOAD MODAL -->
<div class="modal-overlay hidden" id="appOverlay" onclick="if(event.target===this) closeAppModal()">
  <div class="modal" id="appModal">
    <div class="modal-header">
      <h3 id="appModalTitle">Login</h3>
      <button class="btn-close" onclick="closeAppModal()">✕</button>
    </div>
    <div class="modal-content">
      <div id="authMessage" class="modal-message"></div>

      <div id="loginForm">
        <p class="modal-note">Use your username and password to sign in.</p>
        <label>Username<input id="loginUsername" type="text" placeholder="Username" /></label>
        <label>Password<input id="loginPassword" type="password" placeholder="Password" /></label>
        <div class="auth-row">
          <button class="btn-play-daily" onclick="handleLogin()">Login</button>
          <button class="btn-play-daily" style="background:var(--surface2);color:var(--text);border:1px solid var(--border)" onclick="showAuth('register')">Create account</button>
        </div>
      </div>

      <div id="registerForm" class="hidden">
        <p class="modal-note">Create a free account and start uploading community games.</p>
        <label>Username<input id="registerUsername" type="text" placeholder="Username" /></label>
        <label>Password<input id="registerPassword" type="password" placeholder="Password" /></label>
        <label>Confirm Password<input id="registerConfirm" type="password" placeholder="Confirm password" /></label>
        <div class="auth-row">
          <button class="btn-play-daily" onclick="handleRegister()">Register</button>
          <button class="btn-play-daily" style="background:var(--surface2);color:var(--text);border:1px solid var(--border)" onclick="showAuth('login')">Already have account</button>
        </div>
      </div>

      <div id="uploadForm" class="hidden">
        <p class="modal-note">Upload a public game file or link. Attach a cover photo.</p>
        <label>Game title<input id="uploadTitle" type="text" placeholder="Game name" /></label>
        <label>Emoji icon<input id="uploadEmoji" type="text" placeholder="e.g. 🧩 or 🎮" maxlength="2" /></label>
        <label>Game file<input id="uploadGameFile" type="file" accept=".html,.htm,.js,.txt" /></label>
        <label>Cover photo<input id="uploadImage" type="file" accept="image/*" /></label>
        <label>Link or page URL<input id="uploadUrl" type="url" placeholder="https://" /></label>
        <label>Description<textarea id="uploadDescription" placeholder="Short game description"></textarea></label>
        <div class="auth-row">
          <button class="btn-play-daily" onclick="saveUploadedGame()">Upload</button>
          <button class="btn-play-daily" style="background:var(--surface2);color:var(--text);border:1px solid var(--border)" onclick="closeAppModal()">Cancel</button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- TOAST -->
<div class="toast" id="toast"></div>

<script>
// =====================
// UTILS / STORAGE
// =====================
function getUsers() { return JSON.parse(localStorage.getItem('gamezooUsers') || '[]'); }
function saveUsers(u) { localStorage.setItem('gamezooUsers', JSON.stringify(u)); }
function getSession() { return JSON.parse(localStorage.getItem('gamezooSession') || 'null'); }
function setSession(u) { localStorage.setItem('gamezooSession', JSON.stringify(u)); }
function getPublicGames() { return JSON.parse(localStorage.getItem('gamezooPublicGames') || '[]'); }
function savePublicGames(g) { localStorage.setItem('gamezooPublicGames', JSON.stringify(g)); }
function getBests() { return JSON.parse(localStorage.getItem('gamezooBests') || '{}'); }
function saveBest(game, score) {
  const b = getBests();
  if (!b[game] || score > b[game]) { b[game] = score; localStorage.setItem('gamezooBests', JSON.stringify(b)); }
  refreshPersonalBests();
  checkAchievements();
}
function getFavorites() { return JSON.parse(localStorage.getItem('gamezooFavs') || '[]'); }
function saveFavorites(f) { localStorage.setItem('gamezooFavs', JSON.stringify(f)); }
function getStreak() { return JSON.parse(localStorage.getItem('gamezooStreak') || '{"count":0,"lastDate":""}'); }
function getLeaderboard() { return JSON.parse(localStorage.getItem('gamezooLB') || '[]'); }
function addToLeaderboard(game, score) {
  const user = getSession();
  if (!user) return;
  const lb = getLeaderboard();
  lb.push({ user: user.username, game, score, date: Date.now() });
  lb.sort((a,b) => b.score - a.score);
  localStorage.setItem('gamezooLB', JSON.stringify(lb.slice(0, 200)));
}
function getUnlocked() { return JSON.parse(localStorage.getItem('gamezooAch') || '[]'); }
function unlockAch(id) {
  const u = getUnlocked();
  if (u.includes(id)) return;
  u.push(id);
  localStorage.setItem('gamezooAch', JSON.stringify(u));
  const a = ACHIEVEMENTS.find(x=>x.id===id);
  if (a) showToast('🏅 Achievement: ' + a.name);
  renderAchievements();
}

function showToast(msg, dur=2800) {
  const t = document.getElementById('toast');
  t.textContent = msg;
  t.classList.add('show');
  setTimeout(() => t.classList.remove('show'), dur);
}

// =====================
// STREAK
// =====================
function updateStreak() {
  const s = getStreak();
  const today = new Date().toDateString();
  const yesterday = new Date(Date.now()-86400000).toDateString();
  if (s.lastDate === today) {
    // already recorded today
  } else if (s.lastDate === yesterday) {
    s.count++;
    s.lastDate = today;
  } else if (s.lastDate !== today) {
    s.count = 1;
    s.lastDate = today;
  }
  localStorage.setItem('gamezooStreak', JSON.stringify(s));
  document.getElementById('navStreak').textContent = `🔥 ${s.count} day streak`;
  return s.count;
}

// =====================
// DAILY TIMER
// =====================
function updateTimer() {
  const now = new Date();
  const midnight = new Date(now);
  midnight.setHours(24,0,0,0);
  const diff = midnight - now;
  const h = Math.floor(diff/3600000).toString().padStart(2,'0');
  const m = Math.floor((diff%3600000)/60000).toString().padStart(2,'0');
  const s = Math.floor((diff%60000)/1000).toString().padStart(2,'0');
  document.getElementById('dailyTimer').innerHTML = `${h}:${m}:${s}<small>resets in</small>`;
}
setInterval(updateTimer, 1000);
updateTimer();

// =====================
// THEME
// =====================
function toggleTheme() {
  const body = document.body;
  const isLight = body.classList.toggle('light-mode');
  document.getElementById('themeBtn').textContent = isLight ? '☀️' : '🌙';
  localStorage.setItem('gamezooTheme', isLight ? 'light' : 'dark');
}
(function() {
  if (localStorage.getItem('gamezooTheme') === 'light') {
    document.body.classList.add('light-mode');
    document.getElementById('themeBtn').textContent = '☀️';
  }
})();

// =====================
// PAGE ROUTING
// =====================
function showPage(page) {
  document.getElementById('mainPage').classList.toggle('hidden', page !== 'main');
  document.getElementById('achievementsPage').classList.toggle('hidden', page !== 'achievements');
  document.getElementById('profilePage').classList.toggle('hidden', page !== 'profile');
  document.getElementById('featuredPage').classList.toggle('hidden', page !== 'featured');
  document.querySelector('footer').style.display = '';
  if (page === 'achievements') renderAchievements();
  if (page === 'profile') renderProfile();
  window.scrollTo(0,0);
}

// =====================
// EMBED GAMES
// =====================
function openEmbedGame(id) {
  const allGames = ['snakeGame','memoryGame','typeGame','clickGame','wordleGame','game2048','whackGame','flappyGame','dodgeGame','externalGame','featuredGame1'];
  document.getElementById('modalOverlay').classList.remove('hidden');
  allGames.forEach(gid => document.getElementById(gid).classList.add('hidden'));
  document.getElementById('featuredGame1').classList.remove('hidden');
  document.getElementById('modalTitle').textContent = 'Featured Game';
}

function scrollToLeaderboard() {
  showPage('main');
  setTimeout(() => document.getElementById('lbSection').scrollIntoView({behavior:'smooth'}), 100);
}
function scrollToDaily() {
  showPage('main');
  setTimeout(() => document.getElementById('dailySection').scrollIntoView({behavior:'smooth'}), 100);
}

// =====================
// CATEGORY FILTER
// =====================
let currentCat = 'all';
function filterCat(cat, btn) {
  currentCat = cat;
  document.querySelectorAll('.cat-tab').forEach(t=>t.classList.remove('active'));
  btn.classList.add('active');
  filterGames();
}

function filterGames() {
  const query = document.getElementById('gameSearch').value.trim().toLowerCase();
  const favs = getFavorites();
  document.querySelectorAll('.built-in-card').forEach(card => {
    const text = card.textContent.toLowerCase();
    const cat = card.dataset.cat || '';
    const id = card.querySelector('.fav-btn')?.dataset?.id || card.getAttribute('onclick')?.match(/openGame\('([^']+)'\)/)?.[1] || '';
    const catOk = currentCat === 'all' || cat === currentCat || (currentCat === 'favorites' && favs.includes(id));
    const searchOk = !query || text.includes(query);
    card.classList.toggle('hidden', !catOk || !searchOk);
  });
  renderPublicGames();
}

// =====================
// FAVORITES
// =====================
function toggleFav(e, gameId) {
  e.stopPropagation();
  const favs = getFavorites();
  const idx = favs.indexOf(gameId);
  if (idx === -1) { favs.push(gameId); showToast('❤️ Added to favorites'); }
  else { favs.splice(idx,1); showToast('💔 Removed from favorites'); }
  saveFavorites(favs);
  refreshFavButtons();
}

function refreshFavButtons() {
  const favs = getFavorites();
  document.querySelectorAll('.fav-btn').forEach(btn => {
    const onclick = btn.getAttribute('onclick');
    const m = onclick?.match(/toggleFav\(event,'([^']+)'\)/);
    if (m) btn.textContent = favs.includes(m[1]) ? '❤️' : '🤍';
  });
}

// =====================
// PERSONAL BESTS
// =====================
const GAME_NAMES = {snake:'Snake',memory:'Memory',typeracer:'Type Racer',click:'Speed Click',wordle:'Wordle','2048':'2048',whack:'Whack-a-Mole',flappy:'Flappy Bird',dodge:'Dodge'};
const GAME_UNITS = {snake:'pts',memory:'moves',typeracer:'WPM',click:'clicks',wordle:'win',  '2048':'score',whack:'pts',flappy:'pts',dodge:'pts'};

function refreshPersonalBests() {
  const bests = getBests();
  Object.keys(GAME_NAMES).forEach(id => {
    const el = document.getElementById('pb-' + id);
    if (el && bests[id] !== undefined) {
      el.textContent = `🏆 Best: ${bests[id]} ${GAME_UNITS[id] || 'pts'}`;
    }
  });
}

// =====================
// ACHIEVEMENTS
// =====================
const ACHIEVEMENTS = [
  {id:'first_game', name:'First Blood', desc:'Play your first game', icon:'🎮'},
  {id:'snake_5', name:'Sssserious', desc:'Score 5 in Snake', icon:'🐍'},
  {id:'snake_20', name:'Snake God', desc:'Score 20+ in Snake', icon:'👑'},
  {id:'click_30', name:'Click Maniac', desc:'Click 30+ times', icon:'👆'},
  {id:'click_60', name:'Inhuman Speed', desc:'Click 60+ times', icon:'⚡'},
  {id:'type_50', name:'Speed Typist', desc:'Reach 50 WPM', icon:'⌨️'},
  {id:'type_80', name:'Keyboard Warrior', desc:'Reach 80 WPM', icon:'🔥'},
  {id:'wordle_win', name:'Wordsmith', desc:'Win a Wordle', icon:'📝'},
  {id:'tile_512', name:'Getting Serious', desc:'Reach 512 in 2048', icon:'🔢'},
  {id:'tile_2048', name:'2048 Master', desc:'Reach the 2048 tile', icon:'🏆'},
  {id:'whack_20', name:'Mole Slayer', desc:'Whack 20 moles', icon:'🔨'},
  {id:'flappy_5', name:'Bird Watcher', desc:'Score 5 in Flappy', icon:'🐦'},
  {id:'streak_3', name:'Habit Forming', desc:'3 day play streak', icon:'🔥'},
  {id:'streak_7', name:'Week Warrior', desc:'7 day play streak', icon:'🌟'},
  {id:'upload', name:'Game Dev', desc:'Upload a community game', icon:'🚀'},
  {id:'social', name:'Social Gamer', desc:'Comment on a community game', icon:'💬'},
];

function checkAchievements() {
  const bests = getBests();
  const streak = getStreak().count;
  if (bests['snake'] >= 1) unlockAch('first_game');
  if (bests['snake'] >= 5) unlockAch('snake_5');
  if (bests['snake'] >= 20) unlockAch('snake_20');
  if (bests['click'] >= 30) unlockAch('click_30');
  if (bests['click'] >= 60) unlockAch('click_60');
  if (bests['typeracer'] >= 50) unlockAch('type_50');
  if (bests['typeracer'] >= 80) unlockAch('type_80');
  if (bests['whack'] >= 20) unlockAch('whack_20');
  if (bests['flappy'] >= 5) unlockAch('flappy_5');
  if (bests['2048'] >= 512) unlockAch('tile_512');
  if (bests['2048'] >= 2048) unlockAch('tile_2048');
  if (streak >= 3) unlockAch('streak_3');
  if (streak >= 7) unlockAch('streak_7');
}

function renderAchievements() {
  const grid = document.getElementById('achievementsGrid');
  if (!grid) return;
  const unlocked = getUnlocked();
  grid.innerHTML = ACHIEVEMENTS.map(a => `
    <div class="achievement ${unlocked.includes(a.id)?'unlocked':'locked'}">
      <div class="achievement-icon">${a.icon}</div>
      <div class="achievement-name">${a.name}</div>
      <div class="achievement-desc">${a.desc}</div>
    </div>`).join('');
}

// =====================
// LEADERBOARD
// =====================
const DEFAULT_LB = [
  {user:'xX_SnakeMaster_Xx',game:'snake',score:847},
  {user:'speedclicker99',game:'click',score:712},
  {user:'TypeGod',game:'typeracer',score:698},
  {user:'memoryqueen',game:'memory',score:643},
  {user:'flappybird_pro',game:'flappy',score:38},
];

function renderLeaderboard(filter, btn) {
  if (btn) {
    document.querySelectorAll('.lb-tab').forEach(t=>t.classList.remove('active'));
    btn.classList.add('active');
  }
  let entries = [...DEFAULT_LB, ...getLeaderboard()];
  if (filter && filter !== 'all') entries = entries.filter(e=>e.game===filter);
  entries.sort((a,b)=>b.score-a.score);
  const body = document.getElementById('lbBody');
  if (!body) return;
  const ranks = ['🥇','🥈','🥉'];
  const rankClass = ['gold','silver','bronze'];
  body.innerHTML = entries.slice(0,10).map((e,i)=>`
    <div class="leaderboard-row">
      <div class="lb-rank ${rankClass[i]||''}">${ranks[i]||i+1}</div>
      <div class="lb-name">${e.user}</div>
      <div class="lb-game">${GAME_NAMES[e.game]||e.game}</div>
      <div class="lb-score">${e.score} ${GAME_UNITS[e.game]||'pts'}</div>
    </div>`).join('') + (entries.length===0?'<div style="padding:1.5rem;text-align:center;color:var(--muted)">No entries yet. Play to rank!</div>':'');
}

// =====================
// PROFILE
// =====================
function renderProfile() {
  const user = getSession();
  document.getElementById('profileName').textContent = user ? user.username : 'Guest';
  if (!user) return;
  const bests = getBests();
  const unlocked = getUnlocked();
  const streak = getStreak();
  const favs = getFavorites();
  document.getElementById('profileStats').innerHTML = `
    <div class="stat-item"><div class="stat-val">${streak.count}</div><div class="stat-label">Streak</div></div>
    <div class="stat-item"><div class="stat-val">${unlocked.length}</div><div class="stat-label">Achievements</div></div>
    <div class="stat-item"><div class="stat-val">${favs.length}</div><div class="stat-label">Favorites</div></div>
  `;
  document.getElementById('profileBests').innerHTML = Object.entries(bests).map(([k,v])=>`
    <div style="display:flex;justify-content:space-between;padding:0.5rem 0;border-bottom:1px solid var(--border);font-size:0.9rem">
      <span>${GAME_NAMES[k]||k}</span>
      <span style="color:var(--green);font-family:'Fredoka',sans-serif">${v} ${GAME_UNITS[k]||'pts'}</span>
    </div>`).join('') || '<div style="color:var(--muted);font-size:0.85rem">No scores yet — play some games!</div>';
  const achList = ACHIEVEMENTS.filter(a=>unlocked.includes(a.id));
  document.getElementById('profileAchievements').innerHTML = achList.length
    ? achList.map(a=>`<span title="${a.desc}" style="font-size:1.5rem;cursor:default">${a.icon}</span>`).join('')
    : '<span style="color:var(--muted);font-size:0.85rem">No achievements yet</span>';
  document.getElementById('profileFavorites').innerHTML = favs.length
    ? favs.map(id=>`<span style="background:var(--surface2);border:1px solid var(--border);border-radius:8px;padding:4px 10px;font-size:0.82rem">${GAME_NAMES[id]||id}</span>`).join('')
    : '<span style="color:var(--muted);font-size:0.85rem">No favorites yet</span>';
}

// =====================
// MODAL / FULLSCREEN
// =====================
let isFullscreen = false;
function toggleFullscreen() {
  isFullscreen = !isFullscreen;
  const overlay = document.getElementById('modalOverlay');
  overlay.classList.toggle('fullscreen-mode', isFullscreen);
  document.querySelector('.btn-fullscreen').textContent = isFullscreen ? '⊡' : '⛶';
  // Resize canvases after toggle
  setTimeout(() => {
    const modal = document.getElementById('gameModal');
    const w = modal.clientWidth;
    resizeCanvases(w);
  }, 50);
}

function resizeCanvases(w) {
  ['snakeCanvas','flappyCanvas','dodgeCanvas'].forEach(id => {
    const c = document.getElementById(id);
    if (c && !c.closest('.hidden')) {
      if (id === 'snakeCanvas') {
        // keep 26:17 ratio
        const h = Math.round(w * 17/26);
        c.width = w; c.height = h;
      } else {
        c.width = w; c.height = Math.round(w * 360/520);
      }
    }
  });
}

function openGame(game) {
  updateStreak();
  unlockAch('first_game');
  const overlay = document.getElementById('modalOverlay');
  overlay.classList.remove('hidden');
  overlay.classList.remove('fullscreen-mode');
  isFullscreen = false;
  document.querySelector('.btn-fullscreen').textContent = '⛶';
  ['snakeGame','memoryGame','typeGame','clickGame','wordleGame','game2048','whackGame','flappyGame','dodgeGame','externalGame'].forEach(id=>document.getElementById(id).classList.add('hidden'));
  const titles = {snake:'🐍 Snake',memory:'🧠 Memory Match',typeracer:'⌨️ Type Racer',click:'👆 Speed Click',wordle:'📝 Wordle','2048':'🔢 2048',whack:'🔨 Whack-a-Mole',flappy:'🐦 Flappy Bird',dodge:'💫 Dodge'};
  document.getElementById('modalTitle').textContent = titles[game] || game;
  const gameMap = {snake:'snakeGame',memory:'memoryGame',typeracer:'typeGame',click:'clickGame',wordle:'wordleGame','2048':'game2048',whack:'whackGame',flappy:'flappyGame',dodge:'dodgeGame'};
  if (gameMap[game]) {
    document.getElementById(gameMap[game]).classList.remove('hidden');
    if (game==='snake') initSnake();
    else if (game==='memory') initMemory();
    else if (game==='typeracer') initType();
    else if (game==='click') initClick();
    else if (game==='wordle') initWordle();
    else if (game==='2048') init2048();
    else if (game==='whack') initWhack();
    else if (game==='flappy') initFlappy();
    else if (game==='dodge') initDodge();
  }
}

function closeModal() {
  document.getElementById('modalOverlay').classList.add('hidden');
  document.getElementById('modalOverlay').classList.remove('fullscreen-mode');
  isFullscreen = false;
  if (snakeInterval) clearInterval(snakeInterval);
  if (clickInterval) clearInterval(clickInterval);
  if (whackInterval) clearInterval(whackInterval);
  if (whackMoleInterval) clearInterval(whackMoleInterval);
  if (flappyRaf) cancelAnimationFrame(flappyRaf);
  if (dodgeRaf) cancelAnimationFrame(dodgeRaf);
  if (currentExternalBlobUrl) { URL.revokeObjectURL(currentExternalBlobUrl); currentExternalBlobUrl = null; }
  document.getElementById('externalFrame').src = 'about:blank';
  document.getElementById('externalGame').classList.add('hidden');
  document.getElementById('featuredGame1').classList.add('hidden');
}

function closeIfBg(e) { if (e.target === document.getElementById('modalOverlay')) closeModal(); }

// =====================
// SNAKE
// =====================
let snake, dir, nextDir, food, snakeScore, snakeBestScore=0, snakeInterval;

function initSnake() {
  if (snakeInterval) clearInterval(snakeInterval);
  snake = [{x:13,y:8},{x:12,y:8},{x:11,y:8}];
  dir = {x:1,y:0}; nextDir = {x:1,y:0};
  snakeScore = 0;
  const saved = getBests()['snake'] || 0;
  snakeBestScore = saved;
  document.getElementById('snakeScore').textContent = 0;
  document.getElementById('snakeBest').textContent = snakeBestScore;
  placeFood(); drawSnake();
  snakeInterval = setInterval(tickSnake, 120);
}

function placeFood() { food = {x:Math.floor(Math.random()*26),y:Math.floor(Math.random()*17)}; }

function tickSnake() {
  dir = {...nextDir};
  const head = {x:snake[0].x+dir.x, y:snake[0].y+dir.y};
  if (head.x<0||head.x>=26||head.y<0||head.y>=17||snake.some(s=>s.x===head.x&&s.y===head.y)) {
    clearInterval(snakeInterval);
    saveBest('snake', snakeScore);
    addToLeaderboard('snake', snakeScore);
    renderLeaderboard('all');
    gameOverSnake(); return;
  }
  snake.unshift(head);
  if (head.x===food.x&&head.y===food.y) {
    snakeScore++;
    document.getElementById('snakeScore').textContent = snakeScore;
    if (snakeScore > snakeBestScore) { snakeBestScore = snakeScore; document.getElementById('snakeBest').textContent = snakeBestScore; }
    placeFood();
  } else { snake.pop(); }
  drawSnake();
}

function drawSnake() {
  const canvas = document.getElementById('snakeCanvas');
  const ctx = canvas.getContext('2d');
  const W = canvas.width, H = canvas.height;
  const cw = Math.floor(W/26);
  ctx.fillStyle = '#0a0f0a';
  ctx.fillRect(0,0,W,H);
  ctx.fillStyle = 'rgba(255,255,255,0.03)';
  for (let x=0;x<26;x++) for(let y=0;y<17;y++) { ctx.fillRect(x*cw+cw/2-1,y*cw+cw/2-1,2,2); }
  ctx.fillStyle = '#ff6b9d'; ctx.shadowColor='#ff6b9d'; ctx.shadowBlur=10;
  ctx.fillRect(food.x*cw+2,food.y*cw+2,cw-4,cw-4); ctx.shadowBlur=0;
  snake.forEach((s,i)=>{
    const t=1-i/snake.length;
    ctx.fillStyle=`rgba(107,255,184,${0.4+t*0.6})`;
    ctx.shadowColor=i===0?'#6bffb8':'transparent'; ctx.shadowBlur=i===0?8:0;
    ctx.fillRect(s.x*cw+1,s.y*cw+1,cw-2,cw-2);
  });
  ctx.shadowBlur=0;
}

function gameOverSnake() {
  const canvas=document.getElementById('snakeCanvas');
  const ctx=canvas.getContext('2d');
  const W=canvas.width,H=canvas.height;
  ctx.fillStyle='rgba(0,0,0,0.7)'; ctx.fillRect(0,0,W,H);
  ctx.fillStyle='#ff6b9d'; ctx.font=`bold 2rem 'Fredoka',sans-serif`; ctx.textAlign='center';
  ctx.fillText('Game Over!',W/2,H/2-40);
  ctx.fillStyle='#6bffb8'; ctx.font=`1.2rem 'Fredoka',sans-serif`;
  ctx.fillText(`Score: ${snakeScore}`,W/2,H/2-5);
  ctx.fillStyle='#6b6b8a'; ctx.font=`0.85rem 'Inter',sans-serif`;
  ctx.fillText('Press Restart to play again',W/2,H/2+28);
}

function snakeDir(x,y) {
  if(x===1&&dir.x===-1)return; if(x===-1&&dir.x===1)return;
  if(y===1&&dir.y===-1)return; if(y===-1&&dir.y===1)return;
  nextDir={x,y};
}

document.addEventListener('keydown', e=>{
  if(['ArrowUp','ArrowDown','ArrowLeft','ArrowRight',' '].includes(e.key)) e.preventDefault();
  if(e.key==='ArrowUp') snakeDir(0,-1);
  if(e.key==='ArrowDown') snakeDir(0,1);
  if(e.key==='ArrowLeft') snakeDir(-1,0);
  if(e.key==='ArrowRight') snakeDir(1,0);
  if(e.key===' ') handleFlap();
  // 2048 keys
  if(e.key==='ArrowUp') move2048('up');
  if(e.key==='ArrowDown') move2048('down');
  if(e.key==='ArrowLeft') move2048('left');
  if(e.key==='ArrowRight') move2048('right');
});

// =====================
// MEMORY
// =====================
const EMOJIS=['🐶','🐱','🦊','🐸','🦁','🐧','🦋','🌈'];
let memCards,memFlipped,memPairsFound,memMoves,memLock;

function initMemory() {
  const deck=[...EMOJIS,...EMOJIS].sort(()=>Math.random()-0.5);
  memCards=deck.map((e,i)=>({id:i,emoji:e,flipped:false,matched:false}));
  memFlipped=[];memPairsFound=0;memMoves=0;memLock=false;
  document.getElementById('memPairs').textContent=0;
  document.getElementById('memMoves').textContent=0;
  renderMemory();
}

function renderMemory() {
  const board=document.getElementById('memBoard');
  board.innerHTML='';
  memCards.forEach(card=>{
    const el=document.createElement('div');
    el.style.cssText=`height:70px;display:flex;align-items:center;justify-content:center;font-size:1.8rem;border-radius:8px;cursor:pointer;transition:all 0.2s;border:1px solid ${card.matched?'rgba(107,255,184,0.3)':'var(--border)'};background:${card.flipped||card.matched?'var(--surface2)':'var(--surface)'};`;
    el.textContent=card.flipped||card.matched?card.emoji:'❓';
    if(!card.matched) el.onclick=()=>flipCard(card.id);
    board.appendChild(el);
  });
}

function flipCard(id) {
  if(memLock)return;
  const card=memCards[id];
  if(card.flipped||card.matched)return;
  card.flipped=true; memFlipped.push(id); renderMemory();
  if(memFlipped.length===2){
    memLock=true; memMoves++;
    document.getElementById('memMoves').textContent=memMoves;
    const[a,b]=memFlipped;
    if(memCards[a].emoji===memCards[b].emoji){
      memCards[a].matched=memCards[b].matched=true; memPairsFound++;
      document.getElementById('memPairs').textContent=memPairsFound;
      memFlipped=[];memLock=false;renderMemory();
      if(memPairsFound===8){ saveBest('memory',memMoves); addToLeaderboard('memory',1000-memMoves*10); renderLeaderboard('all'); }
    } else {
      setTimeout(()=>{ memCards[a].flipped=memCards[b].flipped=false; memFlipped=[];memLock=false;renderMemory(); },900);
    }
  }
}

// =====================
// TYPE RACER
// =====================
const SENTENCES=["The quick brown fox jumps over the lazy dog","Gaming is the art of controlled failure","Every expert was once a beginner","Play hard win harder never give up","Speed and accuracy are the keys to victory","The best way to predict the future is to create it","Champions keep playing until they get it right","Great things never come from comfort zones"];
let typeTarget,typeStart,typeComplete;

function initType(){
  typeTarget=SENTENCES[Math.floor(Math.random()*SENTENCES.length)];
  typeStart=null;typeComplete=false;
  document.getElementById('typeInput').value='';
  document.getElementById('typeWPM').textContent=0;
  document.getElementById('typeWords').textContent=0;
  renderTypeDisplay('');
  document.getElementById('typeInput').focus();
}

function renderTypeDisplay(typed){
  const el=document.getElementById('typeDisplay');
  let html='';
  for(let i=0;i<typeTarget.length;i++){
    if(i<typed.length){ const ok=typed[i]===typeTarget[i]; html+=`<span style="color:${ok?'#6bffb8':'#ff6b9d'};${ok?'':'text-decoration:underline'}">${typeTarget[i]}</span>`; }
    else if(i===typed.length){ html+=`<span style="border-bottom:2px solid var(--yellow)">${typeTarget[i]}</span>`; }
    else{ html+=`<span style="color:var(--muted)">${typeTarget[i]}</span>`; }
  }
  el.innerHTML=html;
}

function checkType(){
  const typed=document.getElementById('typeInput').value;
  if(!typeStart) typeStart=Date.now();
  renderTypeDisplay(typed);
  const elapsed=(Date.now()-typeStart)/60000;
  const words=typed.trim().split(/\s+/).length;
  const wpm=Math.round(words/elapsed)||0;
  document.getElementById('typeWPM').textContent=wpm;
  document.getElementById('typeWords').textContent=words;
  if(typed===typeTarget){
    document.getElementById('typeInput').style.borderColor='#6bffb8';
    saveBest('typeracer',wpm); addToLeaderboard('typeracer',wpm); renderLeaderboard('all');
    setTimeout(initType,1200);
  }
}

// =====================
// SPEED CLICK
// =====================
let clickCount,clickInterval,clickActive;

function initClick(){
  clickCount=0;clickActive=false;
  document.getElementById('clickCount').textContent=0;
  document.getElementById('clickTimer').textContent='5.0';
  document.getElementById('clickTarget').style.background='var(--pink)';
  document.getElementById('clickTarget').textContent='👆';
  if(clickInterval) clearInterval(clickInterval);
}

function handleClick(){
  if(!clickActive){
    clickActive=true;
    let t=5.0;
    clickInterval=setInterval(()=>{
      t=Math.max(0,t-0.1);
      document.getElementById('clickTimer').textContent=t.toFixed(1);
      if(t<=0){
        clearInterval(clickInterval);clickActive=false;
        document.getElementById('clickTarget').textContent='🏁';
        document.getElementById('clickTarget').style.background='#6bffb8';
        saveBest('click',clickCount); addToLeaderboard('click',clickCount); renderLeaderboard('all');
      }
    },100);
  }
  if(!clickActive&&document.getElementById('clickTimer').textContent==='0.0')return;
  clickCount++;
  document.getElementById('clickCount').textContent=clickCount;
  const target=document.getElementById('clickTarget');
  target.style.transform='scale(0.93)';
  setTimeout(()=>target.style.transform='scale(1)',80);
}

// =====================
// WORDLE
// =====================
const WORDS5=['crane','slate','trace','blaze','storm','plant','flash','grown','brick','cloud','flame','globe','giant','jewel','knife','lucky','magic','night','olive','piano','queen','river','sharp','tiger','ultra','vivid','witch','xenon','yacht','zebra','brave','chess','drift','eagle','flute','grape','harsh','igloo','joker','karma','lemon','month','noble','ocean','prism','quest','raven','spice','twist','under','valor','water','exact','youth','zonal','alive','bloom','claim','dance','evoke','frost','gloom','honor','index','joint','kneel','lodge','mouse','nurse','orbit','peace','quick','rocky','scout','table','until','vowel','world','xylem','young','zones'];
let wordleTarget,wordleGuesses,wordleCurrent,wordleOver,wordleWins=0,wordleStreak=0;

function initWordle(){
  wordleTarget=WORDS5[Math.floor(Math.random()*WORDS5.length)];
  wordleGuesses=[]; wordleCurrent=''; wordleOver=false;
  document.getElementById('wordleMessage').textContent='Guess the 5-letter word!';
  renderWordleBoard(); renderWordleKeyboard();
}

function renderWordleBoard(){
  const board=document.getElementById('wordleBoard');
  board.innerHTML='';
  for(let r=0;r<6;r++){
    const row=document.createElement('div');
    row.className='wordle-row';
    const guess=wordleGuesses[r]||'';
    for(let c=0;c<5;c++){
      const cell=document.createElement('div');
      cell.className='wordle-cell';
      const letter=guess[c]||'';
      cell.textContent=r<wordleGuesses.length?letter:(r===wordleGuesses.length&&wordleCurrent[c]?wordleCurrent[c]:'');
      if(r<wordleGuesses.length&&letter){
        if(wordleTarget[c]===letter) cell.classList.add('correct');
        else if(wordleTarget.includes(letter)) cell.classList.add('present');
        else cell.classList.add('absent');
      } else if(r===wordleGuesses.length&&wordleCurrent[c]){
        cell.classList.add('active');
      }
      row.appendChild(cell);
    }
    board.appendChild(row);
  }
}

const WORDLE_KEYS=[['q','w','e','r','t','y','u','i','o','p'],['a','s','d','f','g','h','j','k','l'],['Enter','z','x','c','v','b','n','m','⌫']];

function renderWordleKeyboard(){
  const kb=document.getElementById('wordleKeyboard');
  kb.innerHTML='';
  const guessedLetters={};
  wordleGuesses.forEach(g=>{
    g.split('').forEach((ch,i)=>{
      if(!guessedLetters[ch]||guessedLetters[ch]==='absent'){
        if(wordleTarget[i]===ch) guessedLetters[ch]='correct';
        else if(wordleTarget.includes(ch)) guessedLetters[ch]='present';
        else guessedLetters[ch]='absent';
      }
    });
  });
  WORDLE_KEYS.forEach(row=>{
    const rowEl=document.createElement('div');
    rowEl.className='wordle-kb-row';
    row.forEach(k=>{
      const btn=document.createElement('button');
      btn.className='kb-key'+(k.length>1?' wide':'');
      if(guessedLetters[k]) btn.classList.add(guessedLetters[k]);
      btn.textContent=k;
      btn.onclick=()=>wordleKey(k);
      rowEl.appendChild(btn);
    });
    kb.appendChild(rowEl);
  });
}

function wordleKey(k){
  if(wordleOver) return;
  if(k==='⌫'){ wordleCurrent=wordleCurrent.slice(0,-1); }
  else if(k==='Enter'){
    if(wordleCurrent.length<5){ showToast('Word must be 5 letters'); return; }
    wordleGuesses.push(wordleCurrent);
    if(wordleCurrent===wordleTarget){
      wordleOver=true; wordleWins++;
      wordleStreak++;
      document.getElementById('wordleWins').textContent=wordleWins;
      document.getElementById('wordleStreak').textContent=wordleStreak;
      document.getElementById('wordleMessage').textContent=`🎉 You got it in ${wordleGuesses.length}!`;
      saveBest('wordle',wordleWins); unlockAch('wordle_win'); renderLeaderboard('all');
    } else if(wordleGuesses.length===6){
      wordleOver=true; wordleStreak=0;
      document.getElementById('wordleStreak').textContent=0;
      document.getElementById('wordleMessage').textContent=`💀 The word was: ${wordleTarget.toUpperCase()}`;
    }
    wordleCurrent='';
  } else if(wordleCurrent.length<5&&/^[a-z]$/.test(k)){
    wordleCurrent+=k;
  }
  renderWordleBoard(); renderWordleKeyboard();
}

document.addEventListener('keydown',e=>{
  const wg=document.getElementById('wordleGame');
  if(!wg.classList.contains('hidden')&&!wordleOver){
    if(e.key==='Backspace') wordleKey('⌫');
    else if(e.key==='Enter') wordleKey('Enter');
    else if(/^[a-zA-Z]$/.test(e.key)) wordleKey(e.key.toLowerCase());
  }
});

// =====================
// 2048
// =====================
let grid2048, score2048, best2048=0;

function init2048(){
  grid2048=Array.from({length:4},()=>[0,0,0,0]);
  score2048=0;
  document.getElementById('score2048').textContent=0;
  document.getElementById('msg2048').textContent='';
  const saved=getBests()['2048']||0; best2048=saved;
  document.getElementById('best2048').textContent=best2048;
  addTile2048();addTile2048();
  render2048();
}

function addTile2048(){
  const empty=[];
  for(let r=0;r<4;r++) for(let c=0;c<4;c++) if(grid2048[r][c]===0) empty.push([r,c]);
  if(!empty.length) return;
  const[r,c]=empty[Math.floor(Math.random()*empty.length)];
  grid2048[r][c]=Math.random()<0.9?2:4;
}

function render2048(){
  const board=document.getElementById('g2048Board');
  board.innerHTML='';
  grid2048.forEach(row=>row.forEach(v=>{
    const cell=document.createElement('div');
    cell.className=`t2048 t2048-${Math.min(v,2048)}`;
    cell.textContent=v||'';
    board.appendChild(cell);
  }));
}

function move2048(dir){
  if(document.getElementById('game2048').classList.contains('hidden')) return;
  let moved=false;
  const rotate=(g)=>g[0].map((_,i)=>g.map(row=>row[i]).reverse());
  let g=[...grid2048.map(r=>[...r])];
  for(let d=0;d<(['up','left','down','right'].indexOf(dir));d++) g=rotate(g);
  g=g.map(row=>{
    let r=row.filter(x=>x);
    for(let i=0;i<r.length-1;i++) if(r[i]===r[i+1]){score2048+=r[i]*2;r[i]*=2;r.splice(i+1,1);}
    while(r.length<4) r.push(0);
    if(r.join()!==row.join()) moved=true;
    return r;
  });
  const rots=4-['up','left','down','right'].indexOf(dir)%4;
  for(let d=0;d<rots%4;d++) g=rotate(g);
  if(moved){ grid2048=g; addTile2048(); document.getElementById('score2048').textContent=score2048;
    if(score2048>best2048){ best2048=score2048; document.getElementById('best2048').textContent=best2048; saveBest('2048',best2048); }
    render2048();
    const max=Math.max(...grid2048.flat());
    if(max>=2048){ unlockAch('tile_2048'); document.getElementById('msg2048').textContent='🎉 You reached 2048!'; }
    else if(max>=512) unlockAch('tile_512');
    if(!canMove2048()) document.getElementById('msg2048').textContent='Game Over! No moves left.';
  }
}

function canMove2048(){
  for(let r=0;r<4;r++) for(let c=0;c<4;c++){
    if(grid2048[r][c]===0) return true;
    if(c<3&&grid2048[r][c]===grid2048[r][c+1]) return true;
    if(r<3&&grid2048[r][c]===grid2048[r+1][c]) return true;
  }
  return false;
}

// Touch swipe for 2048
let t2048_x,t2048_y;
document.addEventListener('touchstart',e=>{t2048_x=e.touches[0].clientX;t2048_y=e.touches[0].clientY;});
document.addEventListener('touchend',e=>{
  if(!t2048_x) return;
  const dx=e.changedTouches[0].clientX-t2048_x;
  const dy=e.changedTouches[0].clientY-t2048_y;
  if(Math.abs(dx)>Math.abs(dy)){ if(dx>30) move2048('right'); else if(dx<-30) move2048('left'); }
  else{ if(dy>30) move2048('down'); else if(dy<-30) move2048('up'); }
  t2048_x=t2048_y=null;
});

// =====================
// WHACK A MOLE
// =====================
let whackScore,whackBestScore=0,whackTime,whackInterval,whackMoleInterval,whackActive=false;

function initWhack(){
  whackScore=0;whackTime=30;whackActive=true;
  document.getElementById('whackScore').textContent=0;
  document.getElementById('whackTime').textContent=30;
  const saved=getBests()['whack']||0; whackBestScore=saved;
  document.getElementById('whackBest').textContent=whackBestScore;
  buildWhackGrid();
  if(whackInterval) clearInterval(whackInterval);
  if(whackMoleInterval) clearInterval(whackMoleInterval);
  whackInterval=setInterval(()=>{
    whackTime--;
    document.getElementById('whackTime').textContent=whackTime;
    if(whackTime<=0){ clearInterval(whackInterval);clearInterval(whackMoleInterval);whackActive=false;
      document.querySelectorAll('.mole').forEach(m=>m.classList.remove('up'));
      saveBest('whack',whackScore); addToLeaderboard('whack',whackScore); renderLeaderboard('all');
      showToast(`Game over! Score: ${whackScore}`);
    }
  },1000);
  whackMoleInterval=setInterval(popMole,800);
}

function buildWhackGrid(){
  const grid=document.getElementById('whackGrid');
  grid.innerHTML='';
  for(let i=0;i<9;i++){
    const hole=document.createElement('div');
    hole.className='mole-hole';
    hole.dataset.idx=i;
    const mole=document.createElement('div');
    mole.className='mole';
    mole.textContent='🦔';
    hole.appendChild(mole);
    hole.onclick=()=>whackMole(i);
    grid.appendChild(hole);
  }
}

function popMole(){
  document.querySelectorAll('.mole').forEach(m=>{m.classList.remove('up');});
  const count=Math.random()<0.5?1:2;
  const indices=[...Array(9).keys()].sort(()=>Math.random()-0.5).slice(0,count);
  indices.forEach(i=>{
    const hole=document.querySelector(`.mole-hole[data-idx="${i}"]`);
    if(hole) hole.querySelector('.mole').classList.add('up');
  });
}

function whackMole(idx){
  if(!whackActive) return;
  const hole=document.querySelector(`.mole-hole[data-idx="${idx}"]`);
  const mole=hole?.querySelector('.mole');
  if(mole&&mole.classList.contains('up')){
    mole.classList.remove('up');mole.classList.add('bonked');
    setTimeout(()=>mole.classList.remove('bonked'),200);
    whackScore++;
    document.getElementById('whackScore').textContent=whackScore;
    if(whackScore>whackBestScore){ whackBestScore=whackScore; document.getElementById('whackBest').textContent=whackBestScore; }
  }
}

// =====================
// FLAPPY BIRD
// =====================
let flappyScore,flappyBestScore=0,flappyRaf,flappyActive=false;
let bird,pipes,flappyFrame;

function initFlappy(){
  if(flappyRaf) cancelAnimationFrame(flappyRaf);
  const canvas=document.getElementById('flappyCanvas');
  bird={x:80,y:180,vy:0,r:14};
  pipes=[];flappyScore=0;flappyFrame=0;flappyActive=false;
  const saved=getBests()['flappy']||0; flappyBestScore=saved;
  document.getElementById('flappyScore').textContent=0;
  document.getElementById('flappyBest').textContent=flappyBestScore;
  drawFlappy();
  const ctx=canvas.getContext('2d');
  ctx.fillStyle='#fff'; ctx.font="bold 1rem 'Fredoka',sans-serif"; ctx.textAlign='center';
  ctx.fillText('Tap or Space to start!',canvas.width/2,canvas.height/2);
}

function handleFlap(){
  if(!document.getElementById('flappyGame').classList.contains('hidden')){
    if(!flappyActive){ flappyActive=true; flappyLoop(); }
    bird.vy=-8;
  }
}
document.getElementById('flappyCanvas')?.addEventListener('click',handleFlap);

function flappyLoop(){
  if(!flappyActive) return;
  flappyFrame++;
  const canvas=document.getElementById('flappyCanvas');
  const W=canvas.width,H=canvas.height;
  bird.vy+=0.45;
  bird.y+=bird.vy;
  if(flappyFrame%80===0){
    const gap=120,top=60+Math.random()*(H-gap-120);
    pipes.push({x:W,top,bot:top+gap});
  }
  pipes.forEach(p=>p.x-=3);
  pipes=pipes.filter(p=>p.x>-60);
  let hit=false;
  pipes.forEach(p=>{
    if(bird.x+bird.r>p.x&&bird.x-bird.r<p.x+50&&(bird.y-bird.r<p.top||bird.y+bird.r>p.bot)) hit=true;
    if(p.x+50===bird.x||(p.x+50<bird.x&&p.x+53>bird.x)) flappyScore++;
  });
  if(bird.y+bird.r>H||bird.y-bird.r<0) hit=true;
  document.getElementById('flappyScore').textContent=flappyScore;
  if(flappyScore>flappyBestScore){ flappyBestScore=flappyScore; document.getElementById('flappyBest').textContent=flappyBestScore; }
  if(hit){
    flappyActive=false; saveBest('flappy',flappyScore); addToLeaderboard('flappy',flappyScore); renderLeaderboard('all');
    drawFlappy(true); return;
  }
  drawFlappy();
  flappyRaf=requestAnimationFrame(flappyLoop);
}

function drawFlappy(over=false){
  const canvas=document.getElementById('flappyCanvas');
  const ctx=canvas.getContext('2d');
  const W=canvas.width,H=canvas.height;
  // Sky
  ctx.fillStyle='#70c5ce'; ctx.fillRect(0,0,W,H);
  // Ground
  ctx.fillStyle='#ded895'; ctx.fillRect(0,H-40,W,40);
  ctx.fillStyle='#5d4037'; ctx.fillRect(0,H-42,W,4);
  // Pipes
  ctx.fillStyle='#4caf50';
  pipes.forEach(p=>{
    ctx.fillRect(p.x,0,50,p.top);
    ctx.fillRect(p.x,p.bot,50,H-p.bot);
    ctx.fillStyle='#388e3c';
    ctx.fillRect(p.x-4,p.top-20,58,20);
    ctx.fillRect(p.x-4,p.bot,58,20);
    ctx.fillStyle='#4caf50';
  });
  // Bird
  ctx.save();
  ctx.translate(bird.x,bird.y);
  ctx.rotate(Math.min(Math.max(bird.vy*0.05,-0.5),0.5));
  ctx.font='1.8rem serif'; ctx.textAlign='center'; ctx.textBaseline='middle';
  ctx.fillText('🐦',0,0);
  ctx.restore();
  if(over){
    ctx.fillStyle='rgba(0,0,0,0.6)'; ctx.fillRect(0,0,W,H);
    ctx.fillStyle='#fff'; ctx.font="bold 1.5rem 'Fredoka',sans-serif"; ctx.textAlign='center';
    ctx.fillText('Game Over!',W/2,H/2-20);
    ctx.font="1rem 'Fredoka',sans-serif";
    ctx.fillText(`Score: ${flappyScore} | Best: ${flappyBestScore}`,W/2,H/2+15);
    ctx.font="0.8rem 'Inter',sans-serif"; ctx.fillStyle='rgba(255,255,255,0.7)';
    ctx.fillText('Press Restart or tap to play again',W/2,H/2+45);
  }
}

// =====================
// DODGE
// =====================
let dodgePlayer,dodgeEnemies,dodgeScore2,dodgeBestScore=0,dodgeRaf2,dodgeActive=false,dodgeKeys={};
let dodgeFrame2=0;

function initDodge(){
  if(dodgeRaf) cancelAnimationFrame(dodgeRaf);
  const canvas=document.getElementById('dodgeCanvas');
  const W=canvas.width,H=canvas.height;
  dodgePlayer={x:W/2,y:H-60,r:14,speed:4};
  dodgeEnemies=[];dodgeScore2=0;dodgeFrame2=0;dodgeActive=true;
  const saved=getBests()['dodge']||0; dodgeBestScore=saved;
  document.getElementById('dodgeScore').textContent=0;
  document.getElementById('dodgeBest').textContent=dodgeBestScore;
  dodgeLoop();
}

document.addEventListener('keydown',e=>{dodgeKeys[e.key]=true;});
document.addEventListener('keyup',e=>{dodgeKeys[e.key]=false;});

function dodgeLoop(){
  const canvas=document.getElementById('dodgeCanvas');
  const ctx=canvas.getContext('2d');
  const W=canvas.width,H=canvas.height;
  dodgeFrame2++;
  // Move player
  const speed=dodgePlayer.speed;
  if((dodgeKeys['ArrowLeft']||dodgeKeys['a'])&&dodgePlayer.x-dodgePlayer.r>0) dodgePlayer.x-=speed;
  if((dodgeKeys['ArrowRight']||dodgeKeys['d'])&&dodgePlayer.x+dodgePlayer.r<W) dodgePlayer.x+=speed;
  if((dodgeKeys['ArrowUp']||dodgeKeys['w'])&&dodgePlayer.y-dodgePlayer.r>0) dodgePlayer.y-=speed;
  if((dodgeKeys['ArrowDown']||dodgeKeys['s'])&&dodgePlayer.y+dodgePlayer.r<H) dodgePlayer.y+=speed;
  // Spawn enemies
  const spawnRate=Math.max(20,60-Math.floor(dodgeFrame2/120));
  if(dodgeFrame2%spawnRate===0){
    dodgeEnemies.push({x:Math.random()*W,y:-20,r:10+Math.random()*10,vy:2+Math.random()*3,vx:(Math.random()-0.5)*2,color:`hsl(${Math.random()*360},80%,60%)`});
  }
  dodgeEnemies.forEach(e=>{e.y+=e.vy;e.x+=e.vx;});
  dodgeEnemies=dodgeEnemies.filter(e=>e.y<H+30);
  // Score
  dodgeScore2=Math.floor(dodgeFrame2/6);
  document.getElementById('dodgeScore').textContent=dodgeScore2;
  if(dodgeScore2>dodgeBestScore){dodgeBestScore=dodgeScore2; document.getElementById('dodgeBest').textContent=dodgeBestScore;}
  // Collision
  let hit2=false;
  dodgeEnemies.forEach(e=>{
    const dx=dodgePlayer.x-e.x,dy=dodgePlayer.y-e.y;
    if(Math.sqrt(dx*dx+dy*dy)<dodgePlayer.r+e.r) hit2=true;
  });
  // Draw
  ctx.fillStyle='#0a0a1a'; ctx.fillRect(0,0,W,H);
  // Stars
  ctx.fillStyle='rgba(255,255,255,0.5)';
  for(let i=0;i<30;i++) ctx.fillRect((i*73+dodgeFrame2)%W,(i*47)%H,1,1);
  // Enemies
  dodgeEnemies.forEach(e=>{
    ctx.fillStyle=e.color; ctx.shadowColor=e.color; ctx.shadowBlur=8;
    ctx.beginPath(); ctx.arc(e.x,e.y,e.r,0,Math.PI*2); ctx.fill();
  });
  ctx.shadowBlur=0;
  // Player
  ctx.font='1.6rem serif'; ctx.textAlign='center'; ctx.textBaseline='middle';
  ctx.fillText('🚀',dodgePlayer.x,dodgePlayer.y);
  if(hit2){
    dodgeActive=false;
    ctx.fillStyle='rgba(0,0,0,0.7)'; ctx.fillRect(0,0,W,H);
    ctx.fillStyle='#ff6b9d'; ctx.font="bold 1.5rem 'Fredoka',sans-serif"; ctx.textAlign='center';
    ctx.fillText('💥 Crashed!',W/2,H/2-20);
    ctx.fillStyle='#6bffb8'; ctx.font="1rem 'Fredoka',sans-serif";
    ctx.fillText(`Score: ${dodgeScore2}`,W/2,H/2+15);
    saveBest('dodge',dodgeScore2); addToLeaderboard('dodge',dodgeScore2); renderLeaderboard('all');
    return;
  }
  dodgeRaf=requestAnimationFrame(dodgeLoop);
}

// =====================
// AUTH + PUBLIC GAMES
// =====================
function logout(){ localStorage.removeItem('gamezooSession'); updateUserUI(); renderPublicGames(); renderLeaderboard('all'); }

let currentExternalGameId=null, currentExternalBlobUrl=null;

function readFileAsDataURL(file){
  return new Promise((res,rej)=>{ const r=new FileReader(); r.onload=()=>res(r.result); r.onerror=()=>rej(r.error); r.readAsDataURL(file); });
}

function getAverageRating(game){ if(!game.ratings||!game.ratings.length) return 0; return game.ratings.reduce((s,v)=>s+v,0)/game.ratings.length; }
function getRatingMeta(game){ if(!game.ratings||!game.ratings.length) return 'No ratings yet'; return `⭐ ${getAverageRating(game).toFixed(1)} (${game.ratings.length} reviews)`; }

function buildRatingStars(game){
  const stars=document.getElementById('ratingStars'); stars.innerHTML='';
  const avg=Math.round(getAverageRating(game));
  for(let i=1;i<=5;i++){
    const star=document.createElement('button');
    star.type='button'; star.className='rating-star';
    star.textContent=i<=avg?'★':'☆';
    star.onclick=()=>setGameRating(i);
    stars.appendChild(star);
  }
}

function setGameRating(score){
  const games=getPublicGames();
  const game=games.find(g=>g.id===currentExternalGameId);
  if(!game) return;
  game.ratings=game.ratings||[];
  game.ratings.push(score);
  savePublicGames(games); renderPublicGames(); showExternalGame(game);
}

function showExternalGame(game){
  document.getElementById('externalGameTitle').textContent=game.title;
  document.getElementById('externalGameDesc').textContent=game.description||'Community upload';
  document.getElementById('externalRatingMeta').textContent=getRatingMeta(game);
  buildRatingStars(game);
  const cover=document.getElementById('externalCover');
  if(game.coverImageData){ cover.src=game.coverImageData; cover.classList.remove('hidden'); } else { cover.src=''; cover.classList.add('hidden'); }
  renderComments(game.id);
  const user=getSession();
  document.getElementById('commentInputRow').classList.toggle('hidden',!user);
  document.getElementById('commentLoginNote').classList.toggle('hidden',!!user);
}

// =====================
// COMMENTS
// =====================
function getComments(gameId){ return JSON.parse(localStorage.getItem('gamezooComments_'+gameId)||'[]'); }
function saveComments(gameId,c){ localStorage.setItem('gamezooComments_'+gameId,JSON.stringify(c)); }

function renderComments(gameId){
  const list=document.getElementById('commentsList');
  const comments=getComments(gameId);
  list.innerHTML=comments.length
    ? comments.slice(-20).reverse().map(c=>`<div class="comment"><div class="comment-user">${c.user}</div><div class="comment-text">${c.text}</div></div>`).join('')
    : '<div style="color:var(--muted);font-size:0.82rem">No comments yet. Be the first!</div>';
}

function submitComment(){
  const user=getSession();
  if(!user){showToast('Login to comment');return;}
  const input=document.getElementById('commentInput');
  const text=input.value.trim();
  if(!text) return;
  const comments=getComments(currentExternalGameId);
  comments.push({user:user.username,text,date:Date.now()});
  saveComments(currentExternalGameId,comments);
  input.value='';
  renderComments(currentExternalGameId);
  unlockAch('social');
}

// =====================
// USER UI
// =====================
function updateUserUI(){
  const user=getSession();
  const userBlock=document.getElementById('navUser');
  const loginBtn=document.getElementById('loginBtn');
  const registerBtn=document.getElementById('registerBtn');
  if(user){
    userBlock.classList.remove('hidden');
    loginBtn.classList.add('hidden');
    registerBtn.classList.add('hidden');
    document.getElementById('navUsername').textContent=user.username;
  } else {
    userBlock.classList.add('hidden');
    loginBtn.classList.remove('hidden');
    registerBtn.classList.remove('hidden');
  }
}

// =====================
// PUBLIC GAMES
// =====================

  {
    "id": "community_1",
    "title": "Cyber Runner",
    "emoji": "\ud83c\udfae",
    "description": "Cyber Runner is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user1",
    "uploaded": 1781301600000,
    "url": "https://example.com/game/1",
    "ratings": [
      4,
      4
    ]
  },
  {
    "id": "community_2",
    "title": "Pixel Pirates",
    "emoji": "\ud83e\udde9",
    "description": "Pixel Pirates is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user2",
    "uploaded": 1781301600001,
    "url": "https://example.com/game/2",
    "ratings": [
      5,
      4,
      4,
      5,
      5,
      3,
      5,
      5,
      4
    ]
  },
  {
    "id": "community_3",
    "title": "Galaxy Guardian",
    "emoji": "\u2694\ufe0f",
    "description": "Galaxy Guardian is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user3",
    "uploaded": 1781301600002,
    "url": "https://example.com/game/3",
    "ratings": [
      5,
      5,
      5,
      4,
      5,
      3,
      5
    ]
  },
  {
    "id": "community_4",
    "title": "Mystic Match",
    "emoji": "\ud83d\ude80",
    "description": "Mystic Match is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user4",
    "uploaded": 1781301600003,
    "url": "https://example.com/game/4",
    "ratings": [
      5,
      3,
      5,
      4,
      4
    ]
  },
  {
    "id": "community_5",
    "title": "Neon Drift",
    "emoji": "\ud83d\udef8",
    "description": "Neon Drift is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user5",
    "uploaded": 1781301600004,
    "url": "https://example.com/game/5",
    "ratings": [
      4,
      5,
      3,
      3,
      5,
      5,
      5,
      4
    ]
  },
  {
    "id": "community_6",
    "title": "Castle Clash",
    "emoji": "\ud83e\udde0",
    "description": "Castle Clash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user6",
    "uploaded": 1781301600005,
    "url": "https://example.com/game/6",
    "ratings": []
  },
  {
    "id": "community_7",
    "title": "Shadow Sprint",
    "emoji": "\ud83d\udc7e",
    "description": "Shadow Sprint is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user7",
    "uploaded": 1781301600006,
    "url": "https://example.com/game/7",
    "ratings": [
      4,
      4,
      3
    ]
  },
  {
    "id": "community_8",
    "title": "Magic Merge",
    "emoji": "\ud83d\udc09",
    "description": "Magic Merge is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user8",
    "uploaded": 1781301600007,
    "url": "https://example.com/game/8",
    "ratings": [
      3,
      4,
      4,
      3,
      4,
      5,
      4,
      4,
      5,
      5,
      5,
      3
    ]
  },
  {
    "id": "community_9",
    "title": "Turbo Tactics",
    "emoji": "\ud83d\udc31",
    "description": "Turbo Tactics is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user9",
    "uploaded": 1781301600008,
    "url": "https://example.com/game/9",
    "ratings": [
      5,
      4,
      4
    ]
  },
  {
    "id": "community_10",
    "title": "Retro Rally",
    "emoji": "\ud83d\udc36",
    "description": "Retro Rally is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user10",
    "uploaded": 1781301600009,
    "url": "https://example.com/game/10",
    "ratings": [
      4,
      4,
      5,
      4,
      5,
      4,
      3,
      4,
      5,
      3
    ]
  },
  {
    "id": "community_11",
    "title": "Astro Harvest",
    "emoji": "\ud83e\udd84",
    "description": "Astro Harvest is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user11",
    "uploaded": 1781301600010,
    "url": "https://example.com/game/11",
    "ratings": [
      4,
      3
    ]
  },
  {
    "id": "community_12",
    "title": "Phantom Quest",
    "emoji": "\ud83c\udf0c",
    "description": "Phantom Quest is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user12",
    "uploaded": 1781301600011,
    "url": "https://example.com/game/12",
    "ratings": [
      4,
      5,
      3,
      3
    ]
  },
  {
    "id": "community_13",
    "title": "Jungle Jam",
    "emoji": "\ud83c\udfce\ufe0f",
    "description": "Jungle Jam is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user13",
    "uploaded": 1781301600012,
    "url": "https://example.com/game/13",
    "ratings": [
      3,
      3,
      3,
      5,
      4
    ]
  },
  {
    "id": "community_14",
    "title": "Space Shuffle",
    "emoji": "\ud83c\udff0",
    "description": "Space Shuffle is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user14",
    "uploaded": 1781301600013,
    "url": "https://example.com/game/14",
    "ratings": [
      5,
      3,
      3,
      5,
      4,
      4,
      3,
      4,
      3,
      3,
      5
    ]
  },
  {
    "id": "community_15",
    "title": "Potion Panic",
    "emoji": "\ud83d\udd75\ufe0f",
    "description": "Potion Panic is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user15",
    "uploaded": 1781301600014,
    "url": "https://example.com/game/15",
    "ratings": []
  },
  {
    "id": "community_16",
    "title": "Dragon Dash",
    "emoji": "\ud83e\uddd9",
    "description": "Dragon Dash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user16",
    "uploaded": 1781301600015,
    "url": "https://example.com/game/16",
    "ratings": [
      3,
      4,
      4,
      4,
      5,
      5,
      4,
      3
    ]
  },
  {
    "id": "community_17",
    "title": "Arcade Armada",
    "emoji": "\ud83e\ude90",
    "description": "Arcade Armada is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user17",
    "uploaded": 1781301600016,
    "url": "https://example.com/game/17",
    "ratings": [
      5,
      3,
      5,
      4,
      4,
      3
    ]
  },
  {
    "id": "community_18",
    "title": "Ninja Night",
    "emoji": "\ud83e\udddf",
    "description": "Ninja Night is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user18",
    "uploaded": 1781301600017,
    "url": "https://example.com/game/18",
    "ratings": [
      3,
      3,
      3,
      4,
      3,
      3,
      4,
      4,
      5,
      5,
      5
    ]
  },
  {
    "id": "community_19",
    "title": "Puzzle Peak",
    "emoji": "\ud83e\ude84",
    "description": "Puzzle Peak is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user19",
    "uploaded": 1781301600018,
    "url": "https://example.com/game/19",
    "ratings": [
      4,
      3,
      4,
      4,
      5,
      3
    ]
  },
  {
    "id": "community_20",
    "title": "Rocket Rally",
    "emoji": "\ud83c\udfaf",
    "description": "Rocket Rally is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user20",
    "uploaded": 1781301600019,
    "url": "https://example.com/game/20",
    "ratings": [
      4,
      3,
      5,
      3,
      4,
      4,
      4,
      3
    ]
  },
  {
    "id": "community_21",
    "title": "Crystal Clash",
    "emoji": "\ud83c\udfae",
    "description": "Crystal Clash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user21",
    "uploaded": 1781301600020,
    "url": "https://example.com/game/21",
    "ratings": [
      4
    ]
  },
  {
    "id": "community_22",
    "title": "Mystery Manor",
    "emoji": "\ud83e\udde9",
    "description": "Mystery Manor is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user22",
    "uploaded": 1781301600021,
    "url": "https://example.com/game/22",
    "ratings": [
      3,
      3
    ]
  },
  {
    "id": "community_23",
    "title": "Viking Voyage",
    "emoji": "\u2694\ufe0f",
    "description": "Viking Voyage is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user23",
    "uploaded": 1781301600022,
    "url": "https://example.com/game/23",
    "ratings": [
      5,
      5,
      5,
      3,
      5,
      4,
      5,
      4
    ]
  },
  {
    "id": "community_24",
    "title": "Time Traveler",
    "emoji": "\ud83d\ude80",
    "description": "Time Traveler is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user24",
    "uploaded": 1781301600023,
    "url": "https://example.com/game/24",
    "ratings": [
      3,
      5,
      3,
      3,
      3,
      4,
      5,
      3
    ]
  },
  {
    "id": "community_25",
    "title": "Ocean Odyssey",
    "emoji": "\ud83d\udef8",
    "description": "Ocean Odyssey is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user25",
    "uploaded": 1781301600024,
    "url": "https://example.com/game/25",
    "ratings": [
      5,
      5,
      5,
      5,
      5,
      4,
      4,
      4,
      3,
      3,
      5
    ]
  },
  {
    "id": "community_26",
    "title": "Sky Squadron",
    "emoji": "\ud83e\udde0",
    "description": "Sky Squadron is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user26",
    "uploaded": 1781301600025,
    "url": "https://example.com/game/26",
    "ratings": [
      5,
      4,
      4
    ]
  },
  {
    "id": "community_27",
    "title": "Forest Frenzy",
    "emoji": "\ud83d\udc7e",
    "description": "Forest Frenzy is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user27",
    "uploaded": 1781301600026,
    "url": "https://example.com/game/27",
    "ratings": [
      5,
      3,
      5,
      4,
      5
    ]
  },
  {
    "id": "community_28",
    "title": "Meteor Mayhem",
    "emoji": "\ud83d\udc09",
    "description": "Meteor Mayhem is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user28",
    "uploaded": 1781301600027,
    "url": "https://example.com/game/28",
    "ratings": [
      4
    ]
  },
  {
    "id": "community_29",
    "title": "Wizard Wars",
    "emoji": "\ud83d\udc31",
    "description": "Wizard Wars is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user29",
    "uploaded": 1781301600028,
    "url": "https://example.com/game/29",
    "ratings": [
      5,
      4,
      4,
      4,
      4,
      3
    ]
  },
  {
    "id": "community_30",
    "title": "Heroic Hunt",
    "emoji": "\ud83d\udc36",
    "description": "Heroic Hunt is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user30",
    "uploaded": 1781301600029,
    "url": "https://example.com/game/30",
    "ratings": [
      4,
      3,
      3,
      4
    ]
  },
  {
    "id": "community_31",
    "title": "Cosmic Clash",
    "emoji": "\ud83e\udd84",
    "description": "Cosmic Clash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user31",
    "uploaded": 1781301600030,
    "url": "https://example.com/game/31",
    "ratings": [
      5,
      3,
      4,
      5
    ]
  },
  {
    "id": "community_32",
    "title": "Lunar Landing",
    "emoji": "\ud83c\udf0c",
    "description": "Lunar Landing is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user32",
    "uploaded": 1781301600031,
    "url": "https://example.com/game/32",
    "ratings": []
  },
  {
    "id": "community_33",
    "title": "Space Saboteur",
    "emoji": "\ud83c\udfce\ufe0f",
    "description": "Space Saboteur is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user33",
    "uploaded": 1781301600032,
    "url": "https://example.com/game/33",
    "ratings": []
  },
  {
    "id": "community_34",
    "title": "Robo Rampage",
    "emoji": "\ud83c\udff0",
    "description": "Robo Rampage is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user34",
    "uploaded": 1781301600033,
    "url": "https://example.com/game/34",
    "ratings": [
      4,
      5,
      3
    ]
  },
  {
    "id": "community_35",
    "title": "Temple Trouble",
    "emoji": "\ud83d\udd75\ufe0f",
    "description": "Temple Trouble is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user35",
    "uploaded": 1781301600034,
    "url": "https://example.com/game/35",
    "ratings": [
      4,
      4,
      4
    ]
  },
  {
    "id": "community_36",
    "title": "Aqua Assault",
    "emoji": "\ud83e\uddd9",
    "description": "Aqua Assault is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user36",
    "uploaded": 1781301600035,
    "url": "https://example.com/game/36",
    "ratings": [
      3,
      4,
      4,
      3,
      5,
      3
    ]
  },
  {
    "id": "community_37",
    "title": "Starlight Sprint",
    "emoji": "\ud83e\ude90",
    "description": "Starlight Sprint is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user37",
    "uploaded": 1781301600036,
    "url": "https://example.com/game/37",
    "ratings": [
      4,
      3,
      5,
      3,
      4,
      5
    ]
  },
  {
    "id": "community_38",
    "title": "Witching Hour",
    "emoji": "\ud83e\udddf",
    "description": "Witching Hour is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user38",
    "uploaded": 1781301600037,
    "url": "https://example.com/game/38",
    "ratings": [
      3,
      4,
      4,
      3,
      4
    ]
  },
  {
    "id": "community_39",
    "title": "Inferno Island",
    "emoji": "\ud83e\ude84",
    "description": "Inferno Island is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user39",
    "uploaded": 1781301600038,
    "url": "https://example.com/game/39",
    "ratings": []
  },
  {
    "id": "community_40",
    "title": "Quantum Quest",
    "emoji": "\ud83c\udfaf",
    "description": "Quantum Quest is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user40",
    "uploaded": 1781301600039,
    "url": "https://example.com/game/40",
    "ratings": [
      4,
      3,
      3,
      5,
      3,
      3,
      3,
      3,
      3
    ]
  },
  {
    "id": "community_41",
    "title": "Zombie Zapper",
    "emoji": "\ud83c\udfae",
    "description": "Zombie Zapper is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user41",
    "uploaded": 1781301600040,
    "url": "https://example.com/game/41",
    "ratings": [
      3,
      3,
      4,
      3,
      4,
      4,
      5,
      3
    ]
  },
  {
    "id": "community_42",
    "title": "Pirate Plunder",
    "emoji": "\ud83e\udde9",
    "description": "Pirate Plunder is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user42",
    "uploaded": 1781301600041,
    "url": "https://example.com/game/42",
    "ratings": [
      5,
      4,
      5,
      5,
      5,
      5,
      5,
      3,
      4,
      4,
      4
    ]
  },
  {
    "id": "community_43",
    "title": "Sandstorm Siege",
    "emoji": "\u2694\ufe0f",
    "description": "Sandstorm Siege is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user43",
    "uploaded": 1781301600042,
    "url": "https://example.com/game/43",
    "ratings": [
      5,
      5
    ]
  },
  {
    "id": "community_44",
    "title": "Temple Trail",
    "emoji": "\ud83d\ude80",
    "description": "Temple Trail is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user44",
    "uploaded": 1781301600043,
    "url": "https://example.com/game/44",
    "ratings": [
      5,
      5
    ]
  },
  {
    "id": "community_45",
    "title": "Shadow Shift",
    "emoji": "\ud83d\udef8",
    "description": "Shadow Shift is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user45",
    "uploaded": 1781301600044,
    "url": "https://example.com/game/45",
    "ratings": [
      3,
      5,
      5,
      5
    ]
  },
  {
    "id": "community_46",
    "title": "Cyber Clash",
    "emoji": "\ud83e\udde0",
    "description": "Cyber Clash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user46",
    "uploaded": 1781301600045,
    "url": "https://example.com/game/46",
    "ratings": [
      5,
      3,
      3,
      5,
      4,
      3,
      4,
      3,
      3,
      3,
      4
    ]
  },
  {
    "id": "community_47",
    "title": "Mecha Mayhem",
    "emoji": "\ud83d\udc7e",
    "description": "Mecha Mayhem is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user47",
    "uploaded": 1781301600046,
    "url": "https://example.com/game/47",
    "ratings": [
      5,
      3,
      4
    ]
  },
  {
    "id": "community_48",
    "title": "Neon Nights",
    "emoji": "\ud83d\udc09",
    "description": "Neon Nights is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user48",
    "uploaded": 1781301600047,
    "url": "https://example.com/game/48",
    "ratings": [
      3,
      5,
      5,
      3,
      3,
      4,
      3
    ]
  },
  {
    "id": "community_49",
    "title": "Galaxy Glide",
    "emoji": "\ud83d\udc31",
    "description": "Galaxy Glide is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user49",
    "uploaded": 1781301600048,
    "url": "https://example.com/game/49",
    "ratings": [
      4,
      5,
      4,
      5,
      5,
      5,
      4,
      4,
      4,
      4
    ]
  },
  {
    "id": "community_50",
    "title": "Mystic Maze",
    "emoji": "\ud83d\udc36",
    "description": "Mystic Maze is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user50",
    "uploaded": 1781301600049,
    "url": "https://example.com/game/50",
    "ratings": [
      3,
      5,
      3,
      3,
      5,
      3,
      4,
      4,
      3,
      3,
      3,
      4
    ]
  },
  {
    "id": "community_51",
    "title": "Frozen Fortress",
    "emoji": "\ud83e\udd84",
    "description": "Frozen Fortress is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user51",
    "uploaded": 1781301600050,
    "url": "https://example.com/game/51",
    "ratings": [
      3,
      4,
      3,
      3,
      3,
      3,
      5
    ]
  },
  {
    "id": "community_52",
    "title": "Pirate Panic",
    "emoji": "\ud83c\udf0c",
    "description": "Pirate Panic is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user52",
    "uploaded": 1781301600051,
    "url": "https://example.com/game/52",
    "ratings": [
      4
    ]
  },
  {
    "id": "community_53",
    "title": "Moon Miner",
    "emoji": "\ud83c\udfce\ufe0f",
    "description": "Moon Miner is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user53",
    "uploaded": 1781301600052,
    "url": "https://example.com/game/53",
    "ratings": [
      4,
      4,
      3,
      4,
      3,
      5,
      4,
      4,
      3
    ]
  },
  {
    "id": "community_54",
    "title": "Star Siege",
    "emoji": "\ud83c\udff0",
    "description": "Star Siege is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user54",
    "uploaded": 1781301600053,
    "url": "https://example.com/game/54",
    "ratings": [
      3,
      4,
      4,
      4,
      4,
      3,
      3,
      3
    ]
  },
  {
    "id": "community_55",
    "title": "Rune Rush",
    "emoji": "\ud83d\udd75\ufe0f",
    "description": "Rune Rush is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user55",
    "uploaded": 1781301600054,
    "url": "https://example.com/game/55",
    "ratings": [
      3,
      5,
      5,
      4,
      5,
      5,
      4,
      3,
      5,
      3,
      3
    ]
  },
  {
    "id": "community_56",
    "title": "Aurora Ascent",
    "emoji": "\ud83e\uddd9",
    "description": "Aurora Ascent is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user56",
    "uploaded": 1781301600055,
    "url": "https://example.com/game/56",
    "ratings": [
      3,
      3,
      4,
      3,
      4,
      5,
      3,
      4,
      4
    ]
  },
  {
    "id": "community_57",
    "title": "Bullet Ballet",
    "emoji": "\ud83e\ude90",
    "description": "Bullet Ballet is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user57",
    "uploaded": 1781301600056,
    "url": "https://example.com/game/57",
    "ratings": [
      5,
      3,
      3,
      3,
      4
    ]
  },
  {
    "id": "community_58",
    "title": "Knight Knockout",
    "emoji": "\ud83e\udddf",
    "description": "Knight Knockout is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user58",
    "uploaded": 1781301600057,
    "url": "https://example.com/game/58",
    "ratings": []
  },
  {
    "id": "community_59",
    "title": "Orbital Ops",
    "emoji": "\ud83e\ude84",
    "description": "Orbital Ops is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user59",
    "uploaded": 1781301600058,
    "url": "https://example.com/game/59",
    "ratings": [
      3,
      3
    ]
  },
  {
    "id": "community_60",
    "title": "Hive Havoc",
    "emoji": "\ud83c\udfaf",
    "description": "Hive Havoc is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user60",
    "uploaded": 1781301600059,
    "url": "https://example.com/game/60",
    "ratings": [
      5,
      4,
      5,
      4,
      3
    ]
  },
  {
    "id": "community_61",
    "title": "Phantom Fortress",
    "emoji": "\ud83c\udfae",
    "description": "Phantom Fortress is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user61",
    "uploaded": 1781301600060,
    "url": "https://example.com/game/61",
    "ratings": [
      5,
      4,
      4,
      5,
      4,
      5
    ]
  },
  {
    "id": "community_62",
    "title": "Vortex Voyage",
    "emoji": "\ud83e\udde9",
    "description": "Vortex Voyage is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user62",
    "uploaded": 1781301600061,
    "url": "https://example.com/game/62",
    "ratings": [
      5
    ]
  },
  {
    "id": "community_63",
    "title": "Rune Rumble",
    "emoji": "\u2694\ufe0f",
    "description": "Rune Rumble is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user63",
    "uploaded": 1781301600062,
    "url": "https://example.com/game/63",
    "ratings": []
  },
  {
    "id": "community_64",
    "title": "Pixel Parade",
    "emoji": "\ud83d\ude80",
    "description": "Pixel Parade is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user64",
    "uploaded": 1781301600063,
    "url": "https://example.com/game/64",
    "ratings": [
      3,
      3,
      5,
      3,
      5,
      4,
      5,
      5,
      5,
      4,
      5,
      5
    ]
  },
  {
    "id": "community_65",
    "title": "Synthwave Sprint",
    "emoji": "\ud83d\udef8",
    "description": "Synthwave Sprint is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user65",
    "uploaded": 1781301600064,
    "url": "https://example.com/game/65",
    "ratings": [
      5
    ]
  },
  {
    "id": "community_66",
    "title": "Crimson Canyon",
    "emoji": "\ud83e\udde0",
    "description": "Crimson Canyon is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user66",
    "uploaded": 1781301600065,
    "url": "https://example.com/game/66",
    "ratings": [
      4,
      5,
      5,
      4,
      4,
      4,
      5
    ]
  },
  {
    "id": "community_67",
    "title": "Meadow Mayhem",
    "emoji": "\ud83d\udc7e",
    "description": "Meadow Mayhem is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user67",
    "uploaded": 1781301600066,
    "url": "https://example.com/game/67",
    "ratings": [
      5,
      5
    ]
  },
  {
    "id": "community_68",
    "title": "Turbo Temple",
    "emoji": "\ud83d\udc09",
    "description": "Turbo Temple is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user68",
    "uploaded": 1781301600067,
    "url": "https://example.com/game/68",
    "ratings": [
      5,
      4
    ]
  },
  {
    "id": "community_69",
    "title": "Blizzard Blitz",
    "emoji": "\ud83d\udc31",
    "description": "Blizzard Blitz is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user69",
    "uploaded": 1781301600068,
    "url": "https://example.com/game/69",
    "ratings": [
      4,
      4,
      4
    ]
  },
  {
    "id": "community_70",
    "title": "Golem Gardens",
    "emoji": "\ud83d\udc36",
    "description": "Golem Gardens is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user70",
    "uploaded": 1781301600069,
    "url": "https://example.com/game/70",
    "ratings": [
      5,
      3,
      5,
      4
    ]
  },
  {
    "id": "community_71",
    "title": "Phantom Phalanx",
    "emoji": "\ud83e\udd84",
    "description": "Phantom Phalanx is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user71",
    "uploaded": 1781301600070,
    "url": "https://example.com/game/71",
    "ratings": [
      5,
      4,
      3,
      4,
      5,
      4,
      3,
      4,
      4
    ]
  },
  {
    "id": "community_72",
    "title": "Solar Sprint",
    "emoji": "\ud83c\udf0c",
    "description": "Solar Sprint is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user72",
    "uploaded": 1781301600071,
    "url": "https://example.com/game/72",
    "ratings": [
      4,
      3,
      5,
      4
    ]
  },
  {
    "id": "community_73",
    "title": "Tiki Takedown",
    "emoji": "\ud83c\udfce\ufe0f",
    "description": "Tiki Takedown is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user73",
    "uploaded": 1781301600072,
    "url": "https://example.com/game/73",
    "ratings": [
      3,
      5,
      5,
      3
    ]
  },
  {
    "id": "community_74",
    "title": "Quantum Quarters",
    "emoji": "\ud83c\udff0",
    "description": "Quantum Quarters is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user74",
    "uploaded": 1781301600073,
    "url": "https://example.com/game/74",
    "ratings": [
      4,
      4,
      5,
      4
    ]
  },
  {
    "id": "community_75",
    "title": "Nebula Nexus",
    "emoji": "\ud83d\udd75\ufe0f",
    "description": "Nebula Nexus is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user75",
    "uploaded": 1781301600074,
    "url": "https://example.com/game/75",
    "ratings": []
  },
  {
    "id": "community_76",
    "title": "Arcane Ascent",
    "emoji": "\ud83e\uddd9",
    "description": "Arcane Ascent is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user76",
    "uploaded": 1781301600075,
    "url": "https://example.com/game/76",
    "ratings": [
      4,
      3,
      4,
      5,
      4,
      3,
      5,
      4
    ]
  },
  {
    "id": "community_77",
    "title": "Coral Clash",
    "emoji": "\ud83e\ude90",
    "description": "Coral Clash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user77",
    "uploaded": 1781301600076,
    "url": "https://example.com/game/77",
    "ratings": [
      3,
      4,
      3
    ]
  },
  {
    "id": "community_78",
    "title": "Steam Siege",
    "emoji": "\ud83e\udddf",
    "description": "Steam Siege is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user78",
    "uploaded": 1781301600077,
    "url": "https://example.com/game/78",
    "ratings": [
      4,
      3,
      5,
      5,
      3,
      5,
      3,
      5,
      4,
      4,
      4
    ]
  },
  {
    "id": "community_79",
    "title": "Iron Inferno",
    "emoji": "\ud83e\ude84",
    "description": "Iron Inferno is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user79",
    "uploaded": 1781301600078,
    "url": "https://example.com/game/79",
    "ratings": [
      4,
      3,
      4,
      4,
      3,
      3,
      4,
      5,
      3,
      5,
      5,
      4
    ]
  },
  {
    "id": "community_80",
    "title": "Storm Strider",
    "emoji": "\ud83c\udfaf",
    "description": "Storm Strider is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user80",
    "uploaded": 1781301600079,
    "url": "https://example.com/game/80",
    "ratings": [
      3,
      3,
      4,
      5,
      3,
      3,
      5
    ]
  },
  {
    "id": "community_81",
    "title": "Shadow Siege",
    "emoji": "\ud83c\udfae",
    "description": "Shadow Siege is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user81",
    "uploaded": 1781301600080,
    "url": "https://example.com/game/81",
    "ratings": [
      5,
      3,
      5,
      3,
      4,
      3,
      5,
      3,
      5,
      5,
      5
    ]
  },
  {
    "id": "community_82",
    "title": "Mirage Mayhem",
    "emoji": "\ud83e\udde9",
    "description": "Mirage Mayhem is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user82",
    "uploaded": 1781301600081,
    "url": "https://example.com/game/82",
    "ratings": [
      4,
      3,
      3,
      3,
      5,
      4,
      3,
      5
    ]
  },
  {
    "id": "community_83",
    "title": "Cascade Clash",
    "emoji": "\u2694\ufe0f",
    "description": "Cascade Clash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user83",
    "uploaded": 1781301600082,
    "url": "https://example.com/game/83",
    "ratings": [
      5,
      3,
      5,
      4
    ]
  },
  {
    "id": "community_84",
    "title": "Frosted Fury",
    "emoji": "\ud83d\ude80",
    "description": "Frosted Fury is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user84",
    "uploaded": 1781301600083,
    "url": "https://example.com/game/84",
    "ratings": [
      4,
      5,
      4,
      3,
      4,
      4,
      3
    ]
  },
  {
    "id": "community_85",
    "title": "Meteor March",
    "emoji": "\ud83d\udef8",
    "description": "Meteor March is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user85",
    "uploaded": 1781301600084,
    "url": "https://example.com/game/85",
    "ratings": []
  },
  {
    "id": "community_86",
    "title": "Rune Raft",
    "emoji": "\ud83e\udde0",
    "description": "Rune Raft is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user86",
    "uploaded": 1781301600085,
    "url": "https://example.com/game/86",
    "ratings": [
      3,
      3,
      5,
      5,
      5,
      5
    ]
  },
  {
    "id": "community_87",
    "title": "Abyss Adventure",
    "emoji": "\ud83d\udc7e",
    "description": "Abyss Adventure is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user87",
    "uploaded": 1781301600086,
    "url": "https://example.com/game/87",
    "ratings": [
      4,
      5,
      3,
      4,
      4,
      5,
      4,
      5,
      5
    ]
  },
  {
    "id": "community_88",
    "title": "Prism Patrol",
    "emoji": "\ud83d\udc09",
    "description": "Prism Patrol is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user88",
    "uploaded": 1781301600087,
    "url": "https://example.com/game/88",
    "ratings": [
      4,
      4,
      4,
      3,
      5,
      4,
      3,
      5,
      3,
      4
    ]
  },
  {
    "id": "community_89",
    "title": "Dune Dash",
    "emoji": "\ud83d\udc31",
    "description": "Dune Dash is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user89",
    "uploaded": 1781301600088,
    "url": "https://example.com/game/89",
    "ratings": [
      3,
      5,
      4,
      3,
      5,
      5,
      4,
      5,
      4,
      5,
      5
    ]
  },
  {
    "id": "community_90",
    "title": "Comet Command",
    "emoji": "\ud83d\udc36",
    "description": "Comet Command is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user90",
    "uploaded": 1781301600089,
    "url": "https://example.com/game/90",
    "ratings": [
      4,
      4,
      5,
      3,
      3,
      4
    ]
  },
  {
    "id": "community_91",
    "title": "Spectral Sprint",
    "emoji": "\ud83e\udd84",
    "description": "Spectral Sprint is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user91",
    "uploaded": 1781301600090,
    "url": "https://example.com/game/91",
    "ratings": [
      5,
      3,
      5,
      5,
      5,
      5,
      3,
      4,
      3
    ]
  },
  {
    "id": "community_92",
    "title": "Titan Tactics",
    "emoji": "\ud83c\udf0c",
    "description": "Titan Tactics is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user92",
    "uploaded": 1781301600091,
    "url": "https://example.com/game/92",
    "ratings": [
      3,
      3,
      4,
      3,
      5,
      3
    ]
  },
  {
    "id": "community_93",
    "title": "Nova Nucleus",
    "emoji": "\ud83c\udfce\ufe0f",
    "description": "Nova Nucleus is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user93",
    "uploaded": 1781301600092,
    "url": "https://example.com/game/93",
    "ratings": [
      5,
      5,
      4,
      4,
      5,
      3,
      4,
      5,
      3,
      5,
      5,
      5
    ]
  },
  {
    "id": "community_94",
    "title": "Polaris Pilots",
    "emoji": "\ud83c\udff0",
    "description": "Polaris Pilots is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user94",
    "uploaded": 1781301600093,
    "url": "https://example.com/game/94",
    "ratings": [
      3,
      3,
      4,
      4,
      4,
      3,
      5,
      3,
      4,
      5,
      5
    ]
  },
  {
    "id": "community_95",
    "title": "Echo Expedition",
    "emoji": "\ud83d\udd75\ufe0f",
    "description": "Echo Expedition is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user95",
    "uploaded": 1781301600094,
    "url": "https://example.com/game/95",
    "ratings": [
      3
    ]
  },
  {
    "id": "community_96",
    "title": "Impulse Invasion",
    "emoji": "\ud83e\uddd9",
    "description": "Impulse Invasion is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user96",
    "uploaded": 1781301600095,
    "url": "https://example.com/game/96",
    "ratings": [
      5,
      3,
      5,
      3,
      5,
      3,
      4,
      4,
      5,
      4
    ]
  },
  {
    "id": "community_97",
    "title": "Mana Mayhem",
    "emoji": "\ud83e\ude90",
    "description": "Mana Mayhem is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user97",
    "uploaded": 1781301600096,
    "url": "https://example.com/game/97",
    "ratings": [
      3,
      5,
      3,
      3,
      5
    ]
  },
  {
    "id": "community_98",
    "title": "Blaze Brigade",
    "emoji": "\ud83e\udddf",
    "description": "Blaze Brigade is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user98",
    "uploaded": 1781301600097,
    "url": "https://example.com/game/98",
    "ratings": [
      3,
      3,
      5,
      5,
      5,
      4,
      5
    ]
  },
  {
    "id": "community_99",
    "title": "Celestial Circuit",
    "emoji": "\ud83e\ude84",
    "description": "Celestial Circuit is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user99",
    "uploaded": 1781301600098,
    "url": "https://example.com/game/99",
    "ratings": [
      3,
      5,
      5,
      3,
      5
    ]
  },
  {
    "id": "community_100",
    "title": "Fable Fortress",
    "emoji": "\ud83c\udfaf",
    "description": "Fable Fortress is a fast-paced browser adventure with unique challenges and replay value.",
    "owner": "user100",
    "uploaded": 1781301600099,
    "url": "https://example.com/game/100",
    "ratings": [
      5,
      4,
      3,
      3,
      4,
      3,
      3
    ]
  }
];


function renderPublicGames(){
  const grid=document.getElementById('publicGamesGrid');
  const query=document.getElementById('gameSearch').value.trim().toLowerCase();
  let games=getPublicGames().filter(game=>{
    if(!query) return true;
    return `${game.title} ${game.description||''} ${game.owner}`.toLowerCase().includes(query);
  });
  const user=getSession();
  grid.innerHTML='';
  const uploadCard=document.createElement('div');
  uploadCard.className='game-card';
  uploadCard.onclick=user?showUpload:()=>showAuth('login');
  uploadCard.innerHTML=`<div class="game-thumb" style="background:linear-gradient(135deg,#3b3b5b,#1a1a2f);font-size:2.5rem;">+</div>
    <div class="game-info"><div class="game-name">${user?'Upload your game':'Login to upload'}</div>
    <div class="game-meta">${user?'Share your best game with the community':'Create an account to upload games'}</div></div>`;
  grid.appendChild(uploadCard);

  if(games.length===0){
    const empty=document.createElement('div');
    empty.className='game-card';
    empty.innerHTML=`<div class="game-thumb" style="background:linear-gradient(135deg,#2a2a3a,#12121d);font-size:2rem;">🎉</div>
      <div class="game-info"><div class="game-name">${query?'No games found':'No public games yet'}</div>
      <div class="game-meta">${query?'Try another keyword':'Be the first to upload!'}</div></div>`;
    grid.appendChild(empty);
    return;
  }

  games.forEach(game=>{
    const card=document.createElement('div');
    card.className='game-card public-card';
    card.onclick=()=>openPublicGame(game);
    const idNum=parseInt((game.id||'').replace(/[^0-9]/g,''),10) || 0;
    const colors=['#4dd9ff','#ff6b9d','#6bffb8','#ffd93d','#b06bff','#ff9f43'];
    const accent=colors[idNum % colors.length];
    const thumbStyle=game.coverImageData
      ? `background:url('${game.coverImageData}') center/cover no-repeat;`
      : `background:linear-gradient(135deg, ${accent}, #0a141f);`;
    const avg=getAverageRating(game);
    const ratingLabel=avg?`⭐ ${avg.toFixed(1)} · `:'';
    card.innerHTML=`<div class="game-thumb" style="${thumbStyle}font-size:2.5rem;">${game.coverImageData?'':(game.emoji||'🎮')}</div>
      <div class="game-info"><div class="game-name">${game.title}</div>
      <div class="game-meta">${ratingLabel}${game.description||'Community upload'} · by ${game.owner}</div></div>`;
    grid.appendChild(card);
  });
}

function pruneGeneratedPublicGames(){
  const games = getPublicGames();
  const cleaned = games.filter(game => {
    return !(/^community_\d+$/.test(game.id) && /^user\d+$/.test(game.owner) && /^https:\/\/example\.com\/game\//.test(game.url));
  });
  if (cleaned.length !== games.length) savePublicGames(cleaned);
}

function openPublicGame(game){
  document.getElementById('modalOverlay').classList.remove('hidden');
  ['snakeGame','memoryGame','typeGame','clickGame','wordleGame','game2048','whackGame','flappyGame','dodgeGame'].forEach(id=>document.getElementById(id).classList.add('hidden'));
  document.getElementById('externalGame').classList.remove('hidden');
  document.getElementById('modalTitle').textContent=game.title;
  const frame=document.getElementById('externalFrame');
  if(currentExternalBlobUrl){ URL.revokeObjectURL(currentExternalBlobUrl);currentExternalBlobUrl=null; }
  if(game.fileData){
    const byteString=atob(game.fileData.split(',')[1]);
    const array=new Uint8Array(byteString.length);
    for(let i=0;i<byteString.length;i++) array[i]=byteString.charCodeAt(i);
    const blob=new Blob([array],{type:game.fileType});
    currentExternalBlobUrl=URL.createObjectURL(blob);
    frame.src=currentExternalBlobUrl;
  } else { frame.src=game.url; }
  currentExternalGameId=game.id;
  showExternalGame(game);
}

// =====================
// AUTH MODAL
// =====================
function showAuth(type){
  const overlay=document.getElementById('appOverlay');
  const title=document.getElementById('appModalTitle');
  const loginForm=document.getElementById('loginForm');
  const registerForm=document.getElementById('registerForm');
  const uploadForm=document.getElementById('uploadForm');
  const message=document.getElementById('authMessage');
  overlay.classList.remove('hidden'); message.textContent='';
  loginForm.classList.add('hidden'); registerForm.classList.add('hidden'); uploadForm.classList.add('hidden');
  if(type==='register'){ title.textContent='Register'; registerForm.classList.remove('hidden'); }
  else if(type==='upload'){ const user=getSession(); if(!user){showAuth('login');return;} title.textContent='Upload Public Game'; uploadForm.classList.remove('hidden'); }
  else { title.textContent='Login'; loginForm.classList.remove('hidden'); }
}

function closeAppModal(){ document.getElementById('appOverlay').classList.add('hidden'); }

function handleLogin(){
  const username=document.getElementById('loginUsername').value.trim();
  const password=document.getElementById('loginPassword').value;
  const message=document.getElementById('authMessage');
  if(!username||!password){message.textContent='Please fill in both fields.';return;}
  const users=getUsers();
  const user=users.find(u=>u.username.toLowerCase()===username.toLowerCase()&&u.password===password);
  if(!user){message.textContent='Invalid username or password.';return;}
  setSession({username:user.username}); updateUserUI(); renderPublicGames(); closeAppModal();
}

function handleRegister(){
  const username=document.getElementById('registerUsername').value.trim();
  const password=document.getElementById('registerPassword').value;
  const confirm=document.getElementById('registerConfirm').value;
  const message=document.getElementById('authMessage');
  if(!username||!password||!confirm){message.textContent='Please fill in all fields.';return;}
  if(password!==confirm){message.textContent='Passwords do not match.';return;}
  const users=getUsers();
  if(users.some(u=>u.username.toLowerCase()===username.toLowerCase())){message.textContent='Username already taken.';return;}
  users.push({username,password}); saveUsers(users);
  setSession({username}); updateUserUI(); renderPublicGames(); closeAppModal();
}

function showUpload(){ const user=getSession(); if(!user){showAuth('login');return;} showAuth('upload'); }

async function saveUploadedGame(){
  const title=document.getElementById('uploadTitle').value.trim();
  const emoji=document.getElementById('uploadEmoji').value.trim()||'🎮';
  const fileInput=document.getElementById('uploadGameFile');
  const imageInput=document.getElementById('uploadImage');
  const url=document.getElementById('uploadUrl').value.trim();
  const description=document.getElementById('uploadDescription').value.trim();
  const message=document.getElementById('authMessage');
  const user=getSession();
  const file=fileInput.files[0]; const cover=imageInput.files[0];
  if(!title||(!file&&!url)){message.textContent='Title and either a file or URL are required.';return;}
  if(!file&&!/^https?:\/\//.test(url)){message.textContent='Please enter a valid URL starting with https://';return;}
  let fileData='',fileType='',fileName='';
  if(file){ try{fileData=await readFileAsDataURL(file);fileType=file.type||'text/html';fileName=file.name;}catch{message.textContent='Unable to read file.';return;} }
  let coverImageData='';
  if(cover){ try{coverImageData=await readFileAsDataURL(cover);}catch{message.textContent='Unable to read cover image.';return;} }
  const games=getPublicGames();
  games.unshift({id:Date.now(),title,emoji,description,owner:user.username,uploaded:Date.now(),url:file?'':url,fileName,fileType,fileData,coverImageData,ratings:[]});
  savePublicGames(games); renderPublicGames(); unlockAch('upload'); closeAppModal();
}

// =====================
// INIT
// =====================
window.addEventListener('load',()=>{
  updateUserUI();
  pruneGeneratedPublicGames();
  renderPublicGames();
  renderLeaderboard('all');
  refreshPersonalBests();
  refreshFavButtons();
  updateStreak();
  initWordle();
});
</script>
</body>
</html>
