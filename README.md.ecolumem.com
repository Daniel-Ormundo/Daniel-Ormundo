# Caminhos dos arquivos após o reset do ambiente
site_filename = "/mnt/data/index.html"
zip_path = "/mnt/data/ecolumen_site.zip"

# Conteúdo do HTML com os dados atualizados
updated_html_content = """<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EcoLumen | Energia Limpa Compartilhada</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      line-height: 1.6;
    }
    header {
      background: #009688;
      color: #fff;
      padding: 2rem 1rem;
      text-align: center;
    }
    nav {
      background: #004d40;
      padding: 0.5rem;
      text-align: center;
    }
    nav a {
      color: white;
      margin: 0 1rem;
      text-decoration: none;
      font-weight: bold;
    }
    .container {
      padding: 2rem;
    }
    .highlight {
      background: #e0f2f1;
      padding: 2rem;
      text-align: center;
      margin: 2rem 0;
      border-radius: 10px;
    }
    footer {
      background: #004d40;
      color: #fff;
      text-align: center;
      padding: 1rem;
    }
    h2 {
      color: #00796b;
    }
    .blog {
      background: #f1f8e9;
      padding: 2rem;
      border-radius: 10px;
      margin-top: 2rem;
    }
    .blog h3 {
      color: #33691e;
    }
  </style>
</head>
<body>
  <header>
    <h1>EcoLumen</h1>
    <p>Energia limpa, compartilhada e acessível</p>
  </header>

  <nav>
    <a href="#quem-somos">Quem Somos</a>
    <a href="#como-funciona">Como Funciona</a>
    <a href="#beneficios">Benefícios</a>
    <a href="#noticias">Notícias</a>
    <a href="#contato">Contato</a>
  </nav>

  <div class="container">
    <section id="quem-somos">
      <h2>Quem Somos</h2>
      <p>A EcoLumen é uma cooperativa de energia solar criada para tornar o acesso à energia limpa mais justo, sustentável e colaborativo.</p>
      <p><strong>Missão:</strong> Promover o acesso coletivo à energia solar limpa e sustentável.</p>
      <p><strong>Visão:</strong> Ser referência nacional em geração compartilhada de energia solar.</p>
      <p><strong>Valores:</strong> Sustentabilidade, Transparência, Cooperação, Inovação, Justiça Social, Autonomia, Responsabilidade.</p>
    </section>

    <section id="como-funciona">
      <h2>Como Funciona</h2>
      <p>Os cooperados contribuem para a instalação de painéis solares e recebem créditos na conta de luz proporcional à energia gerada.</p>
      <p>É simples, seguro e você contribui para o meio ambiente!</p>
    </section>

    <section id="beneficios">
      <h2>Nossos Benefícios</h2>
      <ul>
        <li>Economia na conta de energia elétrica</li>
        <li>Participação nos resultados (PPR)</li>
        <li>Capacitações e consultorias</li>
        <li>Apoio para projetos sustentáveis</li>
      </ul>
    </section>

    <section class="highlight">
      <h2>Quero ser cooperado!</h2>
      <p>Entre em contato conosco e faça parte da transição energética!</p>
    </section>

    <section id="noticias" class="blog">
      <h2>Notícias</h2>
      <h3>EcoLumen: Cooperativa de Energia Solar Revoluciona Acesso à Sustentabilidade</h3>
      <p>Em uma iniciativa inédita, a cidade ganha sua primeira cooperativa de energia solar. A EcoLumen já atraiu dezenas de cooperados interessados em uma alternativa limpa e acessível. A proposta é simples: unir forças para gerar e compartilhar energia solar, reduzindo custos e impactos ambientais.</p>

      <h3>Transição Energética na Prática: EcoLumen Inclui Participação nos Resultados</h3>
      <p>Fundada com base nos princípios da cooperação e sustentabilidade, a EcoLumen inclui um diferencial: a participação nos resultados (PPR). Isso garante que, além de economia, os cooperados colham dividendos de um projeto coletivo que une tecnologia e consciência ambiental.</p>

      <h3>O Futuro da Energia Está na Mão das Comunidades</h3>
      <p>A EcoLumen quer mais do que gerar energia — quer empoderar. A cooperativa vem com uma proposta de formação contínua, apoio a projetos locais e uma forte atuação em educação ambiental.</p>
    </section>

    <section id="contato">
      <h2>Contato</h2>
      <p>Email: contato@ecolumen.com.br</p>
      <p>WhatsApp: (00) 7070-9669</p>
      <p>Endereço: Rua Girassol 100 - Canis Major</p>
    </section>
  </div>

  <footer>
    <p>© 2025 EcoLumen – Todos os direitos reservados</p>
  </footer>
</body>
</html>
"""

# Salvar o conteúdo atualizado
with open(site_filename, "w", encoding="utf-8") as f:
    f.write(updated_html_content)

# Criar o novo arquivo zip
with ZipFile(zip_path, "w") as zipf:
    zipf.write(site_filename, arcname="index.html")

zip_pathfrom zipfile import ZipFile

# Caminhos dos arquivos após o reset do ambiente
site_filename = "/mnt/data/index.html"
zip_path = "/mnt/data/ecolumen_site.zip"

# Conteúdo do HTML com os dados atualizados
updated_html_content = """<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EcoLumen | Energia Limpa Compartilhada</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      line-height: 1.6;
    }
    header {
      background: #009688;
      color: #fff;
      padding: 2rem 1rem;
      text-align: center;
    }
    nav {
      background: #004d40;
      padding: 0.5rem;
      text-align: center;
    }
    nav a {
      color: white;
      margin: 0 1rem;
      text-decoration: none;
      font-weight: bold;
    }
    .container {
      padding: 2rem;
    }
    .highlight {
      background: #e0f2f1;
      padding: 2rem;
      text-align: center;
      margin: 2rem 0;
      border-radius: 10px;
    }
    footer {
      background: #004d40;
      color: #fff;
      text-align: center;
      padding: 1rem;
    }
    h2 {
      color: #00796b;
    }
    .blog {
      background: #f1f8e9;
      padding: 2rem;
      border-radius: 10px;
      margin-top: 2rem;
    }
    .blog h3 {
      color: #33691e;
    }
  </style>
</head>
<body>
  <header>
    <h1>EcoLumen</h1>
    <p>Energia limpa, compartilhada e acessível</p>
  </header>

  <nav>
    <a href="#quem-somos">Quem Somos</a>
    <a href="#como-funciona">Como Funciona</a>
    <a href="#beneficios">Benefícios</a>
    <a href="#noticias">Notícias</a>
    <a href="#contato">Contato</a>
  </nav>

  <div class="container">
    <section id="quem-somos">
      <h2>Quem Somos</h2>
      <p>A EcoLumen é uma cooperativa de energia solar criada para tornar o acesso à energia limpa mais justo, sustentável e colaborativo.</p>
      <p><strong>Missão:</strong> Promover o acesso coletivo à energia solar limpa e sustentável.</p>
      <p><strong>Visão:</strong> Ser referência nacional em geração compartilhada de energia solar.</p>
      <p><strong>Valores:</strong> Sustentabilidade, Transparência, Cooperação, Inovação, Justiça Social, Autonomia, Responsabilidade.</p>
    </section>

    <section id="como-funciona">
      <h2>Como Funciona</h2>
      <p>Os cooperados contribuem para a instalação de painéis solares e recebem créditos na conta de luz proporcional à energia gerada.</p>
      <p>É simples, seguro e você contribui para o meio ambiente!</p>
    </section>

    <section id="beneficios">
      <h2>Nossos Benefícios</h2>
      <ul>
        <li>Economia na conta de energia elétrica</li>
        <li>Participação nos resultados (PPR)</li>
        <li>Capacitações e consultorias</li>
        <li>Apoio para projetos sustentáveis</li>
      </ul>
    </section>

    <section class="highlight">
      <h2>Quero ser cooperado!</h2>
      <p>Entre em contato conosco e faça parte da transição energética!</p>
    </section>

    <section id="noticias" class="blog">
      <h2>Notícias</h2>
      <h3>EcoLumen: Cooperativa de Energia Solar Revoluciona Acesso à Sustentabilidade</h3>
      <p>Em uma iniciativa inédita, a cidade ganha sua primeira cooperativa de energia solar. A EcoLumen já atraiu dezenas de cooperados interessados em uma alternativa limpa e acessível. A proposta é simples: unir forças para gerar e compartilhar energia solar, reduzindo custos e impactos ambientais.</p>

      <h3>Transição Energética na Prática: EcoLumen Inclui Participação nos Resultados</h3>
      <p>Fundada com base nos princípios da cooperação e sustentabilidade, a EcoLumen inclui um diferencial: a participação nos resultados (PPR). Isso garante que, além de economia, os cooperados colham dividendos de um projeto coletivo que une tecnologia e consciência ambiental.</p>

      <h3>O Futuro da Energia Está na Mão das Comunidades</h3>
      <p>A EcoLumen quer mais do que gerar energia — quer empoderar. A cooperativa vem com uma proposta de formação contínua, apoio a projetos locais e uma forte atuação em educação ambiental.</p>
    </section>

    <section id="contato">
      <h2>Contato</h2>
      <p>Email: contato@ecolumen.com.br</p>
      <p>WhatsApp: (00) 7070-9669</p>
      <p>Endereço: Rua Girassol 100 - Canis Major</p>
    </section>
  </div>

  <footer>
    <p>© 2025 EcoLumen – Todos os direitos reservados</p>
  </footer>
</body>
</html>
"""

# Salvar o conteúdo atualizado
with open(site_filename, "w", encoding="utf-8") as f:
    f.write(updated_html_content)

# Criar o novo arquivo zip
with ZipFile(zip_path, "w") as zipf:
    zipf.write(site_filename, arcname="index.html")

zip_path

<!---
Daniel-Ormundo/Daniel-Ormundo is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
