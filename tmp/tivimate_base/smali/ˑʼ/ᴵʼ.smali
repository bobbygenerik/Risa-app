.class public final Lˑʼ/ᴵʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˑʼ/ᴵᵔ;

.field public ˈ:Z

.field public ˑﹳ:I

.field public final ⁱˊ:Lˏˆ/ﹳٴ;

.field public final ﹳٴ:Lˑʼ/ᵎˊ;


# direct methods
.method public constructor <init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Ljava/lang/ClassLoader;Lˑʼ/ˑٴ;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    const/4 v0, -0x1

    iput v0, p0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    iput-object p1, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    iput-object p2, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    const-string p1, "state"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lˑʼ/ˏᵢ;

    iget-object p2, p1, Lˑʼ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lˑʼ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object p2

    iget-object p4, p1, Lˑʼ/ˏᵢ;->ᴵˊ:Ljava/lang/String;

    iput-object p4, p2, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-boolean p4, p1, Lˑʼ/ˏᵢ;->ʽʽ:Z

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    iget-boolean p4, p1, Lˑʼ/ˏᵢ;->ˈٴ:Z

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ˑٴ:Z

    const/4 p4, 0x1

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ˋᵔ:Z

    iget p4, p1, Lˑʼ/ˏᵢ;->ᴵᵔ:I

    iput p4, p2, Lˑʼ/ᴵᵔ;->ˉـ:I

    iget p4, p1, Lˑʼ/ˏᵢ;->ˊʻ:I

    iput p4, p2, Lˑʼ/ᴵᵔ;->ʿ:I

    iget-object p4, p1, Lˑʼ/ˏᵢ;->ٴᵢ:Ljava/lang/String;

    iput-object p4, p2, Lˑʼ/ᴵᵔ;->ʿᵢ:Ljava/lang/String;

    iget-boolean p4, p1, Lˑʼ/ˏᵢ;->ˉٴ:Z

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ᐧᴵ:Z

    iget-boolean p4, p1, Lˑʼ/ˏᵢ;->ᵎⁱ:Z

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ᵔי:Z

    iget-boolean p4, p1, Lˑʼ/ˏᵢ;->ٴʼ:Z

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ᐧﾞ:Z

    iget-boolean p4, p1, Lˑʼ/ˏᵢ;->ᵎˊ:Z

    iput-boolean p4, p2, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    invoke-static {}, Landroidx/lifecycle/ᵔʾ;->values()[Landroidx/lifecycle/ᵔʾ;

    move-result-object p4

    iget v0, p1, Lˑʼ/ˏᵢ;->ᵔי:I

    aget-object p4, p4, v0

    iput-object p4, p2, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    iget-object p4, p1, Lˑʼ/ˏᵢ;->ˆﾞ:Ljava/lang/String;

    iput-object p4, p2, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iget p4, p1, Lˑʼ/ˏᵢ;->ᵔٴ:I

    iput p4, p2, Lˑʼ/ᴵᵔ;->ᵎⁱ:I

    iget-boolean p1, p1, Lˑʼ/ˏᵢ;->ˈʿ:Z

    iput-boolean p1, p2, Lˑʼ/ᴵᵔ;->ˈˏ:Z

    iput-object p2, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iput-object p5, p2, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string p1, "arguments"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual {p2, p1}, Lˑʼ/ᴵᵔ;->ⁱᴵ(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    invoke-static {p1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    nop

    :cond_1
    return-void
.end method

.method public constructor <init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Lˑʼ/ᴵᵔ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    const/4 v0, -0x1

    iput v0, p0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    iput-object p1, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    iput-object p2, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    iput-object p3, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    return-void
.end method

.method public constructor <init>(Lˑʼ/ᵎˊ;Lˏˆ/ﹳٴ;Lˑʼ/ᴵᵔ;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    const/4 v1, -0x1

    iput v1, p0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    iput-object p1, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    iput-object p2, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    iput-object p3, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    const/4 p1, 0x0

    iput-object p1, p3, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    iput-object p1, p3, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    iput v0, p3, Lˑʼ/ᴵᵔ;->ʼˈ:I

    iput-boolean v0, p3, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    iput-boolean v0, p3, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    iget-object p2, p3, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object p1, p3, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    iput-object p4, p3, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string p1, "arguments"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p3, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 8

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    const/4 v1, -0x1

    iput v1, v3, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ˑ()V

    const/4 v5, 0x0

    iput-object v5, v3, Lˑʼ/ᴵᵔ;->ٴﹳ:Landroid/view/LayoutInflater;

    iget-boolean v6, v3, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v6, :cond_7

    iget-object v6, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iget-boolean v7, v6, Lˑʼ/ʿ;->ᵎˊ:Z

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lˑʼ/ʿ;->ﾞʻ()V

    new-instance v6, Lˑʼ/ʿ;

    invoke-direct {v6}, Lˑʼ/ʿ;-><init>()V

    iput-object v6, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    :cond_1
    iget-object v6, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v6, v3, v4}, Lˑʼ/ᵎˊ;->ʾᵎ(Lˑʼ/ᴵᵔ;Z)V

    iput v1, v3, Lˑʼ/ᴵᵔ;->ʾˋ:I

    iput-object v5, v3, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iput-object v5, v3, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    iput-object v5, v3, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-boolean v1, v3, Lˑʼ/ᴵᵔ;->ᵔי:Z

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ﹳﹳ()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    iget-object v1, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ᵎᵔ;

    iget-object v4, v1, Lˑʼ/ᵎᵔ;->ⁱˊ:Ljava/util/HashMap;

    iget-object v5, v3, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v4, v1, Lˑʼ/ᵎᵔ;->ˑﹳ:Z

    if-eqz v4, :cond_4

    iget-boolean v1, v1, Lˑʼ/ᵎᵔ;->ﾞᴵ:Z

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    :goto_2
    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_5
    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ـﹶ()V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Lˑʼ/י;

    const-string v1, "Fragment "

    const-string v2, " did not call through to super.onDetach()"

    invoke-static {v1, v3, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʼᐧ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving view state for fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    nop

    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    iput-object v1, v0, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    iget-object v2, v2, Lˑʼ/ٴﹳ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    invoke-virtual {v2, v1}, Lـʾ/ᵔﹳ;->ˏי(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, v0, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    :cond_3
    :goto_0
    return-void
.end method

.method public final ʽ()V
    .locals 8

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    iget-object v5, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-object v5, v5, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ᴵʼ;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iput-object v3, v1, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iput-object v2, v1, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, v5, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lˑʼ/ᴵʼ;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    :cond_5
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object v2, v0, Lˑʼ/ʿ;->ʾᵎ:Lˑʼ/ٴᵢ;

    iput-object v2, v1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iget-object v0, v0, Lˑʼ/ʿ;->ᵢˏ:Lˑʼ/ᴵᵔ;

    iput-object v0, v1, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    iget-object v0, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lˑʼ/ᵎˊ;->ᵢˏ(Lˑʼ/ᴵᵔ;Z)V

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ʽⁱ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lˑʼ/ʽʽ;

    invoke-virtual {v7}, Lˑʼ/ʽʽ;->ﹳٴ()V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iget-object v4, v1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ﹳـ()Lʼ/ᵎﹶ;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lˑʼ/ʿ;->ⁱˊ(Lˑʼ/ٴᵢ;Lʼ/ᵎﹶ;Lˑʼ/ᴵᵔ;)V

    iput v2, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    iput-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    iget-object v3, v3, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-virtual {v1, v3}, Lˑʼ/ᴵᵔ;->ـᵎ(Landroid/content/Context;)V

    iget-boolean v3, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v3, :cond_8

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object v3, v3, Lˑʼ/ʿ;->ᵔﹳ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ᐧﾞ;

    invoke-interface {v4}, Lˑʼ/ᐧﾞ;->ⁱˊ()V

    goto :goto_2

    :cond_7
    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iput-boolean v2, v3, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v2, v3, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v4, v3, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v2, v4, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    invoke-virtual {v3, v2}, Lˑʼ/ʿ;->ʽﹳ(I)V

    invoke-virtual {v0, v1, v2}, Lˑʼ/ᵎˊ;->יـ(Lˑʼ/ᴵᵔ;Z)V

    return-void

    :cond_8
    new-instance v0, Lˑʼ/י;

    const-string v2, " did not call through to super.onAttach()"

    invoke-static {v6, v1, v2}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˆʾ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v1, v0, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lˑʼ/ᴵᵔ;->ˊˋ:Z

    if-nez v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v2, "savedInstanceState"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lˑʼ/ᴵᵔ;->ʼـ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v0, Lˑʼ/ᴵᵔ;->ٴﹳ:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v4, v3, v1}, Lˑʼ/ᴵᵔ;->ᵎʿ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const v5, 0x7f0b01a6

    invoke-virtual {v1, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :cond_3
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lˑʼ/ᴵᵔ;->ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    iget-object v3, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1, v0, v3, v4}, Lˑʼ/ᵎˊ;->ˊʻ(Lˑʼ/ᴵᵔ;Landroid/view/View;Z)V

    iput v2, v0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    :cond_4
    return-void
.end method

.method public final ˈ()I
    .locals 13

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-nez v1, :cond_0

    iget v0, v0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    return v0

    :cond_0
    iget v1, p0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ʽᵔ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    if-eqz v2, :cond_5

    iget v1, p0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v2, p0, Lˑʼ/ᴵʼ;->ˑﹳ:I

    if-ge v2, v7, :cond_6

    iget v2, v0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ˑٴ:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    if-nez v2, :cond_9

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_9
    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v10

    invoke-virtual {v10}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    const v10, 0x7f0b0367

    invoke-virtual {v2, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lˑʼ/ᵔﹳ;

    if-eqz v12, :cond_a

    check-cast v11, Lˑʼ/ᵔﹳ;

    goto :goto_2

    :cond_a
    new-instance v11, Lˑʼ/ᵔﹳ;

    invoke-direct {v11, v2}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {v11, v0}, Lˑʼ/ᵔﹳ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ʽᵔ;

    move-result-object v2

    if-eqz v2, :cond_b

    iget v2, v2, Lˑʼ/ʽᵔ;->ⁱˊ:I

    goto :goto_3

    :cond_b
    move v2, v3

    :goto_3
    invoke-virtual {v11, v0}, Lˑʼ/ᵔﹳ;->ᵔᵢ(Lˑʼ/ᴵᵔ;)Lˑʼ/ʽᵔ;

    move-result-object v10

    if-eqz v10, :cond_c

    iget v3, v10, Lˑʼ/ʽᵔ;->ⁱˊ:I

    :cond_c
    if-nez v2, :cond_d

    move v10, v5

    goto :goto_4

    :cond_d
    sget-object v10, Lˑʼ/ᐧﹶ;->ﹳٴ:[I

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v11

    aget v10, v10, v11

    :goto_4
    if-eq v10, v5, :cond_e

    if-eq v10, v9, :cond_e

    move v3, v2

    :cond_e
    if-ne v3, v8, :cond_f

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_f
    if-ne v3, v6, :cond_10

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_10
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ᵔי:Z

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ﹳﹳ()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_11
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    :goto_5
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ـﹶ:Z

    if-eqz v2, :cond_13

    iget v2, v0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    if-ge v2, v4, :cond_13

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_13
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    if-eqz v2, :cond_14

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_14
    invoke-static {v8}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_15
    return v1
.end method

.method public final ˉʿ(Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v1, "savedInstanceState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :try_start_0
    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v1, "viewState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v1, "viewRegistryState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    iget-object p1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lˑʼ/ˏᵢ;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lˑʼ/ˏᵢ;->ˆﾞ:Ljava/lang/String;

    iput-object v1, v0, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    iget v1, p1, Lˑʼ/ˏᵢ;->ᵔٴ:I

    iput v1, v0, Lˑʼ/ᴵᵔ;->ᵎⁱ:I

    iget-boolean p1, p1, Lˑʼ/ˏᵢ;->ˈʿ:Z

    iput-boolean p1, v0, Lˑʼ/ᴵᵔ;->ˈˏ:Z

    :cond_2
    iget-boolean p1, v0, Lˑʼ/ᴵᵔ;->ˈˏ:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, v0, Lˑʼ/ᴵᵔ;->ـﹶ:Z

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to restore view hierarchy state for fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ˉˆ()Landroid/os/Bundle;
    .locals 5

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget v2, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v2, Lˑʼ/ˏᵢ;

    invoke-direct {v2, v1}, Lˑʼ/ˏᵢ;-><init>(Lˑʼ/ᴵᵔ;)V

    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v2, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    if-lez v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lˑʼ/ᴵᵔ;->ʾﾞ(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "savedInstanceState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v3, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lˑʼ/ᵎˊ;->ʽʽ(Lˑʼ/ᴵᵔ;Landroid/os/Bundle;Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ʼـ:Lـʾ/ᵔﹳ;

    invoke-virtual {v3, v2}, Lـʾ/ᵔﹳ;->ˏי(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "registryState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v2}, Lˑʼ/ʿ;->ˏᵢ()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "childFragmentManager"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ʼᐧ()V

    :cond_4
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    if-eqz v2, :cond_5

    const-string v3, "viewState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_5
    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v3, "viewRegistryState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    const-string v2, "arguments"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0
.end method

.method public final ˑﹳ()V
    .locals 8

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᵎʻ:Z

    const/4 v3, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lˑʼ/ᵎˊ;->ʾˋ(Lˑʼ/ᴵᵔ;Z)V

    iget-object v5, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v5}, Lˑʼ/ʿ;->ﹳـ()V

    iput v3, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    iput-boolean v4, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iget-object v5, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    new-instance v6, Lᵎ/ⁱˊ;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v1}, Lᵎ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    invoke-virtual {v1, v0}, Lˑʼ/ᴵᵔ;->ʽᵔ(Landroid/os/Bundle;)V

    iput-boolean v3, v1, Lˑʼ/ᴵᵔ;->ᵎʻ:Z

    iget-boolean v0, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    invoke-virtual {v2, v1, v4}, Lˑʼ/ᵎˊ;->ˏי(Lˑʼ/ᴵᵔ;Z)V

    return-void

    :cond_2
    new-instance v0, Lˑʼ/י;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onCreate()"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v3, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ـᵢ()V

    return-void
.end method

.method public final ٴﹶ()V
    .locals 12

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    iget-boolean v1, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    iget-object v4, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_1

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v5, 0x0

    :try_start_0
    iput-boolean v1, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ˈ()I

    move-result v7

    iget v8, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v9, 0x3

    const v10, 0x7f0b0367

    if-eq v7, v8, :cond_e

    if-le v7, v8, :cond_8

    add-int/lit8 v8, v8, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ᵔʾ()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :pswitch_1
    const/4 v6, 0x6

    iput v6, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ᵔﹳ()V

    goto/16 :goto_4

    :pswitch_3
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/4 v7, 0x4

    if-eqz v6, :cond_7

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v8

    invoke-virtual {v8}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v11, v8, Lˑʼ/ᵔﹳ;

    if-eqz v11, :cond_2

    check-cast v8, Lˑʼ/ᵔﹳ;

    goto :goto_1

    :cond_2
    new-instance v8, Lˑʼ/ᵔﹳ;

    invoke-direct {v8, v6}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v10, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v7, :cond_4

    const/16 v10, 0x8

    if-ne v6, v10, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown visibility "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v9, v7

    goto :goto_2

    :cond_5
    move v9, v2

    :goto_2
    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :cond_6
    invoke-virtual {v8, v9, v2, p0}, Lˑʼ/ᵔﹳ;->ˈ(IILˑʼ/ᴵʼ;)V

    :cond_7
    iput v7, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ﹳٴ()V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ˆʾ()V

    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ﾞᴵ()V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ˑﹳ()V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ʽ()V

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v8, v8, -0x1

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ﾞʻ()V

    goto/16 :goto_4

    :pswitch_9
    const/4 v6, 0x5

    iput v6, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ﹳᐧ()V

    goto/16 :goto_4

    :pswitch_b
    invoke-static {v9}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :cond_9
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v6, :cond_a

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ʼᐧ()V

    :cond_a
    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v6, :cond_d

    iget-object v6, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v7

    invoke-virtual {v7}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lˑʼ/ᵔﹳ;

    if-eqz v8, :cond_b

    check-cast v7, Lˑʼ/ᵔﹳ;

    goto :goto_3

    :cond_b
    new-instance v7, Lˑʼ/ᵔﹳ;

    invoke-direct {v7, v6}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v10, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_3
    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :cond_c
    invoke-virtual {v7, v1, v9, p0}, Lˑʼ/ᵔﹳ;->ˈ(IILˑʼ/ᴵʼ;)V

    :cond_d
    iput v9, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    goto :goto_4

    :pswitch_c
    iput-boolean v5, v4, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    iput v2, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    goto :goto_4

    :pswitch_d
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ᵔᵢ()V

    iput v1, v4, Lˑʼ/ᴵᵔ;->ʾˋ:I

    goto :goto_4

    :pswitch_e
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ᵎﹶ()V

    goto :goto_4

    :pswitch_f
    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ʼˎ()V

    :goto_4
    move v6, v1

    goto/16 :goto_0

    :cond_e
    if-nez v6, :cond_11

    const/4 v6, -0x1

    if-ne v8, v6, :cond_11

    iget-boolean v6, v4, Lˑʼ/ᴵᵔ;->ᵔי:Z

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ﹳﹳ()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static {v9}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up state of never attached fragment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :cond_f
    iget-object v6, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v6, Lˑʼ/ᵎᵔ;

    invoke-virtual {v6, v4, v1}, Lˑʼ/ᵎᵔ;->ᵔᵢ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v0, p0}, Lˏˆ/ﹳٴ;->ᴵˊ(Lˑʼ/ᴵʼ;)V

    invoke-static {v9}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initState called for fragment: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_10
    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ـﹶ()V

    :cond_11
    iget-boolean v0, v4, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    if-eqz v0, :cond_18

    iget-object v0, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, v4, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ᵎᵔ()Lˑʼ/ʿ;

    move-result-object v6

    invoke-virtual {v6}, Lˑʼ/ʿ;->ᵔי()Lٴﾞ/ˆʾ;

    invoke-virtual {v0, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lˑʼ/ᵔﹳ;

    if-eqz v7, :cond_12

    check-cast v6, Lˑʼ/ᵔﹳ;

    goto :goto_5

    :cond_12
    new-instance v6, Lˑʼ/ᵔﹳ;

    invoke-direct {v6, v0}, Lˑʼ/ᵔﹳ;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v10, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_5
    iget-boolean v0, v4, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-eqz v0, :cond_14

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_13
    invoke-virtual {v6, v9, v1, p0}, Lˑʼ/ᵔﹳ;->ˈ(IILˑʼ/ᴵʼ;)V

    goto :goto_6

    :cond_14
    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_15
    invoke-virtual {v6, v2, v1, p0}, Lˑʼ/ᵔﹳ;->ˈ(IILˑʼ/ᴵʼ;)V

    :cond_16
    :goto_6
    iget-object v0, v4, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    if-eqz v0, :cond_17

    iget-boolean v2, v4, Lˑʼ/ᴵᵔ;->ᵎˊ:Z

    if-eqz v2, :cond_17

    invoke-static {v4}, Lˑʼ/ʿ;->ˈʿ(Lˑʼ/ᴵᵔ;)Z

    move-result v2

    if-eqz v2, :cond_17

    iput-boolean v1, v0, Lˑʼ/ʿ;->ˉٴ:Z

    :cond_17
    iput-boolean v5, v4, Lˑʼ/ᴵᵔ;->ˑʼ:Z

    iget-object v0, v4, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˉˆ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_18
    iput-boolean v5, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    return-void

    :goto_7
    iput-boolean v5, p0, Lˑʼ/ᴵʼ;->ˈ:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final ᵎﹶ()V
    .locals 9

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-boolean v0, v1, Lˑʼ/ᴵᵔ;->ᵔי:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ﹳﹳ()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    iget-object v5, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    if-eqz v0, :cond_2

    iget-object v6, v1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lˏˆ/ﹳٴ;->ˋᵔ(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    if-nez v0, :cond_7

    iget-object v6, v5, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v6, Lˑʼ/ᵎᵔ;

    iget-object v7, v6, Lˑʼ/ᵎᵔ;->ⁱˊ:Ljava/util/HashMap;

    iget-object v8, v1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v7, v6, Lˑʼ/ᵎᵔ;->ˑﹳ:Z

    if-eqz v7, :cond_4

    iget-boolean v6, v6, Lˑʼ/ᵎᵔ;->ﾞᴵ:Z

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v2

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v5, v0}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ᐧᴵ:Z

    if-eqz v2, :cond_6

    iput-object v0, v1, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    :cond_6
    iput v3, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    return-void

    :cond_7
    :goto_3
    iget-object v6, v1, Lˑʼ/ᴵᵔ;->ﹳـ:Lˑʼ/ٴᵢ;

    if-eqz v6, :cond_8

    move v7, v2

    goto :goto_4

    :cond_8
    move v7, v3

    :goto_4
    if-eqz v7, :cond_9

    iget-object v2, v5, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lˑʼ/ᵎᵔ;

    iget-boolean v2, v2, Lˑʼ/ᵎᵔ;->ﾞᴵ:Z

    goto :goto_5

    :cond_9
    iget-object v6, v6, Lˑʼ/ٴᵢ;->ˉٴ:Lᵔᵢ/ˆʾ;

    invoke-static {v6}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v6

    xor-int/2addr v2, v6

    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    :goto_6
    iget-object v0, v5, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᵎᵔ;

    invoke-virtual {v0, v1, v3}, Lˑʼ/ᵎᵔ;->ᵔᵢ(Lˑʼ/ᴵᵔ;Z)V

    :cond_c
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ﾞʻ()V

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iput v3, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    iput-boolean v3, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    iput-boolean v3, v1, Lˑʼ/ᴵᵔ;->ᵎʻ:Z

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->י()V

    iget-boolean v0, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0, v1, v3}, Lˑʼ/ᵎˊ;->ʽﹳ(Lˑʼ/ᴵᵔ;Z)V

    invoke-virtual {v5}, Lˏˆ/ﹳٴ;->ʻٴ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_d
    :goto_7
    if-ge v3, v2, :cond_e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lˑʼ/ᴵʼ;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v7, v1, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    iget-object v8, v6, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iput-object v1, v6, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    iput-object v4, v6, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    goto :goto_7

    :cond_e
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˉٴ:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v5, v0}, Lˏˆ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    iput-object v0, v1, Lˑʼ/ᴵᵔ;->ٴᵢ:Lˑʼ/ᴵᵔ;

    :cond_f
    invoke-virtual {v5, p0}, Lˏˆ/ﹳٴ;->ᴵˊ(Lˑʼ/ᴵʼ;)V

    return-void

    :cond_10
    new-instance v0, Lˑʼ/י;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onDestroy()"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔʾ()V
    .locals 7

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    iget-object v2, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_0
    iget-object v0, v2, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lˑʼ/ᴵˊ;->ʼᐧ:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    iget-object v5, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v0, "succeeded"

    goto :goto_3

    :cond_3
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v0

    iput-object v3, v0, Lˑʼ/ᴵˊ;->ʼᐧ:Landroid/view/View;

    iget-object v0, v2, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ﹳـ()V

    iget-object v0, v2, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    const/4 v0, 0x7

    iput v0, v2, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v1, 0x0

    iput-boolean v1, v2, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v2}, Lˑʼ/ᴵᵔ;->ʽⁱ()V

    iget-boolean v4, v2, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v4, :cond_7

    iget-object v4, v2, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    sget-object v5, Landroidx/lifecycle/ˉʿ;->ON_RESUME:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iget-object v4, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, v2, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    invoke-virtual {v4, v5}, Lˑʼ/ٴﹳ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    :cond_6
    iget-object v4, v2, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iput-boolean v1, v4, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v4, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v5, v4, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v5, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    invoke-virtual {v4, v0}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ᴵˊ(Lˑʼ/ᴵᵔ;Z)V

    iget-object v0, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    iget-object v1, v2, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lˏˆ/ﹳٴ;->ˋᵔ(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object v3, v2, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    iput-object v3, v2, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    iput-object v3, v2, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    return-void

    :cond_7
    new-instance v0, Lˑʼ/י;

    const-string v1, "Fragment "

    const-string v3, " did not call through to super.onResume()"

    invoke-static {v1, v2, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔᵢ()V
    .locals 6

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    invoke-virtual {v0}, Lˑʼ/ٴﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v3, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_DESTROY:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v3}, Lˑʼ/ٴﹳ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    :cond_2
    iput v2, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ʾˊ()V

    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v2, :cond_5

    invoke-interface {v1}, Landroidx/lifecycle/ᴵʼ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v2

    sget-object v3, Lʼـ/ﹳٴ;->ⁱˊ:Lʼـ/ﹳٴ;

    new-instance v4, Lˏˆ/ﹳٴ;

    sget-object v5, Lיﹳ/ﹳٴ;->ʽ:Landroidx/lifecycle/ˊˋ;

    invoke-direct {v4, v2, v5, v3}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    const-class v2, Lיﹳ/ﹳٴ;

    invoke-static {v2}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v2}, Lˊʼ/ﾞᴵ;->ⁱˊ()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object v2

    check-cast v2, Lיﹳ/ﹳٴ;

    iget-object v2, v2, Lיﹳ/ﹳٴ;->ⁱˊ:Lיـ/יـ;

    iget v3, v2, Lיـ/יـ;->ʽʽ:I

    if-gtz v3, :cond_3

    iput-boolean v0, v1, Lˑʼ/ᴵᵔ;->ˊˋ:Z

    iget-object v2, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v2, v1, v0}, Lˑʼ/ᵎˊ;->ٴᵢ(Lˑʼ/ᴵᵔ;Z)V

    const/4 v2, 0x0

    iput-object v2, v1, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    iput-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    iput-object v2, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ʾˊ:Landroidx/lifecycle/ˊʻ;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/ʽʽ;->ٴﹶ(Ljava/lang/Object;)V

    iput-boolean v0, v1, Lˑʼ/ᴵᵔ;->ˈʿ:Z

    return-void

    :cond_3
    invoke-virtual {v2, v0}, Lיـ/יـ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lˑʼ/י;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onDestroyView()"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔﹳ()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ﹳـ()V

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    const/4 v0, 0x5

    iput v0, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ⁱˉ()V

    iget-boolean v3, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    sget-object v4, Landroidx/lifecycle/ˉʿ;->ON_START:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    invoke-virtual {v3, v4}, Lˑʼ/ٴﹳ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    :cond_1
    iget-object v3, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iput-boolean v2, v3, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v2, v3, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v4, v3, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v2, v4, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    invoke-virtual {v3, v0}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0, v1, v2}, Lˑʼ/ᵎˊ;->ˈٴ(Lˑʼ/ᴵᵔ;Z)V

    return-void

    :cond_2
    new-instance v0, Lˑʼ/י;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onStart()"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ()V
    .locals 8

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v3, 0x7f0b01a6

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lˑʼ/ᴵᵔ;

    if-eqz v4, :cond_0

    check-cast v3, Lˑʼ/ᴵᵔ;

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    move-object v2, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Lˑʼ/ᴵᵔ;->ʿ:I

    sget-object v3, Lٴﹳ/ⁱˊ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    new-instance v3, Landroidx/fragment/app/strictmode/WrongNestedHierarchyViolation;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to nest fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " within the view of parent fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " via container with ID "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " without using parent\'s childFragmentManager"

    invoke-static {v4, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-static {v3}, Lٴﹳ/ⁱˊ;->ⁱˊ(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {v0}, Lٴﹳ/ⁱˊ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lٴﹳ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-object v1, p0, Lˑʼ/ᴵʼ;->ⁱˊ:Lˏˆ/ﹳٴ;

    iget-object v1, v1, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_3
    if-ltz v5, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˑʼ/ᴵᵔ;

    iget-object v7, v6, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-ne v7, v2, :cond_6

    iget-object v6, v6, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v6, :cond_6

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ᴵᵔ;

    iget-object v6, v5, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_8

    iget-object v5, v5, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v5, :cond_8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_5

    :cond_8
    goto :goto_4

    :cond_9
    :goto_5
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_0
    iget-object v1, v3, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v4, "savedInstanceState"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_1
    iget-object v1, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v1}, Lˑʼ/ʿ;->ﹳـ()V

    iput v0, v3, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v1, 0x0

    iput-boolean v1, v3, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ˑʼ()V

    iget-boolean v5, v3, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    const-string v6, "Fragment "

    if-eqz v5, :cond_7

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_2
    iget-object v0, v3, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, v3, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    iget-object v4, v3, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    if-eqz v4, :cond_4

    iget-object v5, v3, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, v3, Lˑʼ/ᴵᵔ;->ʽʽ:Landroid/util/SparseArray;

    :cond_4
    iput-boolean v1, v3, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v3, v0}, Lˑʼ/ᴵᵔ;->ـˊ(Landroid/os/Bundle;)V

    iget-boolean v0, v3, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v0, :cond_5

    iget-object v0, v3, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    sget-object v4, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v4}, Lˑʼ/ٴﹳ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lˑʼ/י;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-static {v6, v3, v1}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iput-object v2, v3, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    iget-object v0, v3, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    iput-boolean v1, v0, Lˑʼ/ʿ;->ᵎⁱ:Z

    iput-boolean v1, v0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v2, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v1, v2, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0, v3, v1}, Lˑʼ/ᵎˊ;->ﹳᐧ(Lˑʼ/ᴵᵔ;Z)V

    return-void

    :cond_7
    new-instance v0, Lˑʼ/י;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-static {v6, v3, v1}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳᐧ()V
    .locals 4

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lˑʼ/ʿ;->ٴʼ:Z

    iget-object v3, v0, Lˑʼ/ʿ;->ˑٴ:Lˑʼ/ᵎᵔ;

    iput-boolean v2, v3, Lˑʼ/ᵎᵔ;->ᵎﹶ:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v3}, Lˑʼ/ٴﹳ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    :cond_1
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iput v2, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ᐧˎ()V

    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v2, v1, v0}, Lˑʼ/ᵎˊ;->ᴵᵔ(Lˑʼ/ᴵᵔ;Z)V

    return-void

    :cond_2
    new-instance v0, Lˑʼ/י;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onStop()"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﾞʻ()V
    .locals 4

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    nop

    :cond_0
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v2}, Lˑʼ/ٴﹳ;->ﹳٴ(Landroidx/lifecycle/ˉʿ;)V

    :cond_1
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ᐧﹶ:Landroidx/lifecycle/ـˆ;

    sget-object v2, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    const/4 v0, 0x6

    iput v0, v1, Lˑʼ/ᴵᵔ;->ʾˋ:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ˎᐧ()V

    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᴵʼ:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    invoke-virtual {v2, v1, v0}, Lˑʼ/ᵎˊ;->ʼʼ(Lˑʼ/ᴵᵔ;Z)V

    return-void

    :cond_2
    new-instance v0, Lˑʼ/י;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onPause()"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﾞᴵ()V
    .locals 11

    .prologue
    iget-object v0, p0, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v1, v0, Lˑʼ/ᴵᵔ;->ᵔٴ:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    const-string v3, "FragmentManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "moveto CREATE_VIEW: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_1
    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    const-string v4, "savedInstanceState"

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    invoke-virtual {v0, v2}, Lˑʼ/ᴵᵔ;->ʼـ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, v0, Lˑʼ/ᴵᵔ;->ٴﹳ:Landroid/view/LayoutInflater;

    iget-object v7, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    goto/16 :goto_2

    :cond_3
    iget v7, v0, Lˑʼ/ᴵᵔ;->ʿ:I

    if-eqz v7, :cond_7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    iget-object v8, v0, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    iget-object v8, v8, Lˑʼ/ʿ;->ʼʼ:Lʼ/ᵎﹶ;

    invoke-virtual {v8, v7}, Lʼ/ᵎﹶ;->ʼʼ(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_5

    iget-boolean v8, v0, Lˑʼ/ᴵᵔ;->ˋᵔ:Z

    if-nez v8, :cond_8

    iget-boolean v8, v0, Lˑʼ/ᴵᵔ;->ˑٴ:Z

    if-eqz v8, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lˑʼ/ᴵᵔ;->ʿ:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "unknown"

    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lˑʼ/ᴵᵔ;->ʿ:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    instance-of v8, v7, Landroidx/fragment/app/FragmentContainerView;

    if-nez v8, :cond_8

    sget-object v8, Lٴﹳ/ⁱˊ;->ﹳٴ:Lٴﹳ/ﹳٴ;

    new-instance v8, Landroidx/fragment/app/strictmode/WrongFragmentContainerViolation;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Attempting to add fragment "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " which is not a FragmentContainerView"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Landroidx/fragment/app/strictmode/Violation;-><init>(Lˑʼ/ᴵᵔ;Ljava/lang/String;)V

    invoke-static {v8}, Lٴﹳ/ⁱˊ;->ⁱˊ(Landroidx/fragment/app/strictmode/Violation;)V

    invoke-static {v0}, Lٴﹳ/ⁱˊ;->ﹳٴ(Lˑʼ/ᴵᵔ;)Lٴﹳ/ﹳٴ;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create fragment "

    const-string v3, " for a container view with no id"

    invoke-static {v2, v0, v3}, Lˉˆ/ٴᴵ;->ʼˎ(Ljava/lang/String;Lˑʼ/ᴵᵔ;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v7, v5

    :cond_8
    :goto_2
    iput-object v7, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v7, v2}, Lˑʼ/ᴵᵔ;->ᵎʿ(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/4 v6, 0x2

    if-eqz v2, :cond_f

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "moveto VIEW_CREATED: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_9
    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const v9, 0x7f0b01a6

    invoke-virtual {v2, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lˑʼ/ᴵʼ;->ⁱˊ()V

    :cond_a
    iget-boolean v2, v0, Lˑʼ/ᴵᵔ;->ᵎᵔ:Z

    if-eqz v2, :cond_b

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    new-instance v7, Lʽˊ/ˉˆ;

    invoke-direct {v7, v1, v2}, Lʽˊ/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ᴵˊ:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    :cond_d
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v0, v1, v5}, Lˑʼ/ᴵᵔ;->ʻᴵ(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˈⁱ:Lˑʼ/ʿ;

    invoke-virtual {v1, v6}, Lˑʼ/ʿ;->ʽﹳ(I)V

    iget-object v1, p0, Lˑʼ/ᴵʼ;->ﹳٴ:Lˑʼ/ᵎˊ;

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1, v0, v2, v8}, Lˑʼ/ᵎˊ;->ˊʻ(Lˑʼ/ᴵᵔ;Landroid/view/View;Z)V

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v4

    iput v2, v4, Lˑʼ/ᴵˊ;->ˉˆ:F

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    if-nez v1, :cond_f

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v2

    iput-object v1, v2, Lˑʼ/ᴵˊ;->ʼᐧ:Landroid/view/View;

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "requestFocus: Saved focused view "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_e
    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_f
    iput v6, v0, Lˑʼ/ᴵᵔ;->ʾˋ:I

    return-void
.end method
