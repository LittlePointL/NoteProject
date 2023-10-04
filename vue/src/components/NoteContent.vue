<template>
  <div class="contentbar">
    <ul>
      <li :class="item.class" 
      v-for="(item, index) in itemList" :key="index">
      {{ item.text }}
      </li>
    </ul>
  </div>
    
</template>

<script>
import { ref } from 'vue'
import axios from 'axios'

export default {
  
  name:"noteContent",
  data(){
    return {
        itemList: []//页面内容数据
    }
  },
  methods:{
      /*
      添加一项笔记,它包括二级标题和内容
      */
      appendNoteContent(noteContent){
        this.itemList.length = 0
        for (const jsonitor of noteContent) {
          for (const key in jsonitor) {
            if (jsonitor.hasOwnProperty(key)) {
              const value = jsonitor[key];
              this.itemList.push({"text":key,"class":"paragraphSecond"})
              this.itemList.push({"text":value,"class":"paragraphText"})
              
            }
          }
        }
      },
      /*
      axios 请求后端笔记内容数据
      */
      getNoteContent(subjectid){
        axios
       .get(`/api/getSubjectContentByid?subjectid=${subjectid}`)
       .then(response => (
        this.appendNoteContent(JSON.parse(response.data))
        ))
       .catch(function (error) {})
      },

   },
    watch:{
      
    },
    mounted(){
      
    }
  
}


</script>

<style scoped>



.contentbar {
  margin-top: 10%;
  top: 5%;
  left: 5%;
  right: 5%;
  height: 95%;
  background-color: rgb(222,222,222); 
  color: rgb(0,0,0);
  padding: 10px;
}


/*段落二级标题*/
ul .paragraphSecond{
  font-size: 1.5em;
  color:rgb(0,0,0);
  margin:1em;
}

/*note 内容普通文本*/
ul .paragraphText{
  font-size: 1em;
  color:rgb(0,0,0);
  white-space: pre-line;
}


ul {
  list-style-type: none;
}




</style>

0