<template>
  <footer>
    <p>
      ©2017 - lorenatheressa.com - Todos os direitos reservados / Desenvolvido
      por Alfafis.
    </p>
  </footer>
</template>
<script>
export default {
  name: "Footer",
};
</script>
<style scope>
footer {
  top: 90px;
  color: #fff;
  background: #87f;
  padding: 1rem 0;
  text-align: center;
  font-size: 1.2rem;
  position: relative;
  align-items: center;
}
p {
  padding: 0.625rem;
}
@media (max-width: 768px) {
  footer {
    font-size: 0.8rem;
  }
}
</style>
