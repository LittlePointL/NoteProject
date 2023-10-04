<template>
    <div class="titlebar">
        <span class="fristpagebtn">首页</span>
        <span class="mainTitleText">{{mainTitleText}}</span>

        <select class="subjecttypecombox"
        v-model="subjectCurrSelectID" @change="currselectchanged($event)">
        <option value="NONE">未选择</option>
        <option v-for="(options,id) in selectSubjectComboxData"   :key="id" :value="options.id">{{options.title}}
        </option>
        </select>
    </div>
</template>

<script>
import { ref } from 'vue'
import axios from 'axios'

export default {
  
  name:"mainTitle",
  data(){
    return {
        mainTitleText:'',
        subjectCurrSelectID:'NONE',//当前选中的学科 id
        selectSubjectComboxData: []//学科类型下拉框数据
    }
  },
  methods:{
    /*
    当前学科下拉框改变
    */
    currselectchanged(event) {
      if(this.subjectCurrSelectID==="NONE"){
        return
      }
      this.$parent.noteContent_AppendNoteContent(
        this.subjectCurrSelectID)
        this.mainTitleText=
        this.selectSubjectComboxData
        [this.subjectCurrSelectID-1].title
    },
    /*
    添加学科类型的数据
    */
    appendSubjectCombox(arrayData){
      for(let d = 0;d< arrayData.length;++d){
       this.selectSubjectComboxData.push(
        {"id":arrayData[d].uid,"title":arrayData[d].subjectname})
      }
    },
    /*
    axios 查找并填充科目名称
    */
    getAllSubjectName(){
      axios
       .get(`/api/getAllSubjectName`)
       .then(response => (
        this.appendSubjectCombox(response.data)
        ))
       .catch(function (error) {})
    },
   },
    watch:{
      
    },
    mounted(){
      this.getAllSubjectName()
    }
  
}


</script>

<style scoped>
.titlebar {
  position: fixed; /* 固定在页面顶部 */
  top: 0;
  left: 0;
  right: 0;
  height: 5%;
  background-color: rgb(222,222,222); 
  color: rgb(0,0,0);
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 10px;
}

.fristpagebtn {
  flex: 1;
  margin-right: 10px;
  cursor: pointer;
}

.subjecttypecombox {
  flex: 1;
  margin-left: 10px;
  cursor: pointer;
  max-width: 5em;
}
.mainTitleText{
  flex: 1;
  margin-left: 10px;
  font-size: 2.5em;
}
</style>

