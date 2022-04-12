var granimInstance = new Granim({
   element: '#backgroundGradient',
   name: 'granim',
   opacity: [0.8, 0.8],
   states : {
       "default-state": {
           gradients: [
               ['#834D9B', '#D04ED6'],
               ['#1CD8D2', '#93EDC7'],
               ['#12c2e9', '#c471ed'],
               ['#b92b27', '#1565C0'],
               ['#373B44', '#4286f4'],
               ['#2980B9', '#6DD5FA'],
               ['#6b6b83', '#3b8d99'],
           ]
       }
   }
});
