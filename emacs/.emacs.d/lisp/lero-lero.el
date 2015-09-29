;;; lero-lero.el --- Versão simplificada do famoso Gerador de Lero-Lero

;; Copyright (C) 2015 Felipe Bueno

;; Author: Felipe Bueno <bueno.felipe@gmail.com>
;; Version: 0.1.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Versão simplificada do famoso Gerador de Lero-Lero

;;; Code:

(defun get-random-element (list)
  "Returns a random element of LIST."
  (if (and list (listp list))
      (nth (random (length list)) list)
    (error "Argument to get-random-element not a list or the list is empty")))

(setq ta `("Caros amigos, " "Por outro lado, " "Assim mesmo, "
           "No entanto, não podemos esquecer que "
           "Do mesmo modo, "
           "A prática cotidiana prova que "
           "Nunca é demais lembrar o peso e o significado destes problemas, uma vez que "
           "As experiências acumuladas demonstram que "
           "Acima de tudo, é fundamental ressaltar que "
           "O incentivo ao avanço tecnológico, assim como "
           "Não obstante, "
           "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se "
           "Pensando mais a longo prazo, "
           "O que temos que ter sempre em mente é que "
           "Ainda assim, existem dúvidas a respeito de como "
           "Gostaria de enfatizar que "
           "Todavia, "
           "A nível organizacional, "
           "O empenho em analisar "
           "Percebemos, cada vez mais, que "
           "No mundo atual, "
           "É importante questionar o quanto "
           "Neste sentido, "
           "Evidentemente, "
           "Por conseguinte, "
           "É claro que "
           "Podemos já vislumbrar o modo pelo qual "
           "Desta maneira, "
           "O cuidado em identificar pontos críticos n"
           "A certificação de metodologias que nos auxiliam a lidar com " ))

(setq tb `("a execução dos pontos do programa "
           "a complexidade dos estudos efetuados "
           "a contínua expansão de nossa atividade "
           "a estrutura atual da organização "
           "o novo modelo estrutural aqui preconizado "
           "o desenvolvimento contínuo de distintas formas de atuação "
           "a constante divulgação das informações "
           "a consolidação das estruturas "
           "a consulta aos diversos militantes "
           "o início da atividade geral de formação de atitudes "
           "o desafiador cenário globalizado "
           "a mobilidade dos capitais internacionais "
           "o fenômeno da Internet "
           "a hegemonia do ambiente político "
           "a expansão dos mercados mundiais "
           "o aumento do diálogo entre os diferentes setores produtivos "
           "a crescente influência da mídia "
           "a necessidade de renovação processual "
           "a competitividade nas transações comerciais "
           "o surgimento do comércio virtual "
           "a revolução dos costumes "
           "o acompanhamento das preferências de consumo "
           "o comprometimento entre as equipes "
           "a determinação clara de objetivos "
           "a adoção de políticas descentralizadoras "
           "a valorização de fatores subjetivos "
           "a percepção das dificuldades "
           "o entendimento das metas propostas "
           "o consenso sobre a necessidade de qualificação "
           "o julgamento imparcial das eventualidades "))

(setq tc `("nos obriga à análise "
           "cumpre um papel essencial na formulação "
           "exige a precisão e a definição "
           "auxilia a preparação e a composição "
           "garante a contribuição de um grupo importante na determinação "
           "assume importantes posições no estabelecimento "
           "facilita a criação "
           "obstaculiza a apreciação da importância "
           "oferece uma interessante oportunidade para verificação "
           "acarreta um processo de reformulação e modernização "
           "pode nos levar a considerar a reestruturação "
           "representa uma abertura para a melhoria "
           "ainda não demonstrou convincentemente que vai participar na mudança "
           "talvez venha a ressaltar a relatividade "
           "prepara-nos para enfrentar situações atípicas decorrentes "
           "maximiza as possibilidades por conta "
           "desafia a capacidade de equalização "
           "agrega valor ao estabelecimento "
           "é uma das consequências "
           "promove a alavancagem "
           "não pode mais se dissociar "
           "possibilita uma melhor visão global "
           "estimula a padronização "
           "aponta para a melhoria "
           "faz parte de um processo de gerenciamento "
           "causa impacto indireto na reavaliação "
           "apresenta tendências no sentido de aprovar a manutenção "
           "estende o alcance e a importância "
           "deve passar por modificações independentemente "
           "afeta positivamente a correta previsão "))


(setq td `("das condições financeiras e administrativas exigidas."
           "das diretrizes de desenvolvimento para o futuro."
           "do sistema de participação geral."
           "das posturas dos órgãos dirigentes com relação às suas atribuições."
           "das novas proposições."
           "das direções preferenciais no sentido do progresso."
           "do sistema de formação de quadros que corresponde às necessidades."
           "das condições inegavelmente apropriadas."
           "dos índices pretendidos."
           "das formas de ação."
           "dos paradigmas corporativos."
           "dos relacionamentos verticais entre as hierarquias."
           "do processo de comunicação como um todo."
           "dos métodos utilizados na avaliação de resultados."
           "de todos os recursos funcionais envolvidos."
           "dos níveis de motivação departamental."
           "da gestão inovadora da qual fazemos parte."
           "dos modos de operação convencionais."
           "de alternativas às soluções ortodoxas."
           "dos procedimentos normalmente adotados."
           "dos conhecimentos estratégicos para atingir a excelência."
           "do fluxo de informações."
           "do levantamento das variáveis envolvidas."
           "das diversas correntes de pensamento."
           "do impacto na agilidade decisória."
           "das regras de conduta normativas."
           "do orçamento setorial."
           "do retorno esperado a longo prazo."
           "do investimento em reciclagem técnica."
           "do remanejamento dos quadros funcionais."))

;;;###autoload
(defun lero-lero ()
  "New inpirational lero-lero"
  (interactive)
  (concat (get-random-element ta)
          (get-random-element tb)
          (get-random-element tc)
          (get-random-element td)))

(defun insert-lero-lero-at-point ()
  "Insert lero-lero at current cursor location"
  (interactive)
  (insert (lero-lero)))

(provide 'lero-lero)
;;; lero-lero.el ends here
