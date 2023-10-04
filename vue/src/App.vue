
<template>
  <div class="app">
    <MainTitle ref="MainTitle"></MainTitle>
    <NoteContent ref="NoteContent"></NoteContent>
  </div>
  

</template>


<script>
import MainTitle from './components/MainTitle.vue'
import NoteContent from './components/NoteContent.vue'

export default {
  name: 'mainApp',
  components: {
    MainTitle,
    NoteContent
  },
  methods: {
    //笔记内容 vue 组件添加笔记内容
    noteContent_AppendNoteContent(subjectid) {
      this.$refs.NoteContent.getNoteContent(subjectid)
    },
    //设置笔记内容 vue 组件的笔记名
    noteContent_setSubjectName(subjectname){
      this.$refs.NoteContent.setSubjectName(subjectname)
    }
    
  }
}
</script>

<style scoped>
.app{
  width: 100%;
  height: 100%;
}
</style>
