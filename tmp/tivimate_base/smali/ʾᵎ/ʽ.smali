.class public final Lʾᵎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lʻٴ/ᵔᵢ;

.field public ʽ:Z

.field public final ˈ:Lʾᵎ/ˈ;

.field public final ˑﹳ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public ⁱˊ:I

.field public ﹳٴ:Ljava/util/HashSet;

.field public ﾞᴵ:Lʾᵎ/ʽ;


# direct methods
.method public constructor <init>(Lʾᵎ/ˈ;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lʾᵎ/ʽ;->ᵎﹶ:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lʾᵎ/ʽ;->ᵔᵢ:I

    iput-object p1, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iput p2, p0, Lʾᵎ/ʽ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ـﹶ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʾᵎ/ʽ;->ˑﹳ:I

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ᵢˏ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(Lʾᵎ/ʽ;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p1, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget p1, p1, Lʾᵎ/ʽ;->ˑﹳ:I

    const/4 v2, 0x6

    iget v3, p0, Lʾᵎ/ʽ;->ˑﹳ:I

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    if-ne v3, v2, :cond_7

    iget-boolean p1, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget-boolean p1, p1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-nez p1, :cond_7

    goto :goto_5

    :cond_1
    invoke-static {v3}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/16 v8, 0x9

    const/16 v9, 0x8

    packed-switch v5, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {v3}, Lʼﾞ/ˊˋ;->ᵢˏ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    if-eq p1, v2, :cond_9

    if-eq p1, v9, :cond_9

    if-eq p1, v8, :cond_9

    goto :goto_4

    :pswitch_1
    if-eq p1, v7, :cond_9

    if-ne p1, v6, :cond_7

    goto :goto_5

    :pswitch_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    instance-of v1, v1, Lʾᵎ/ᵔᵢ;

    if-eqz v1, :cond_4

    if-nez v2, :cond_7

    if-ne p1, v8, :cond_9

    goto :goto_4

    :cond_4
    return v2

    :pswitch_3
    if-eq p1, v7, :cond_6

    if-ne p1, v6, :cond_5

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_3

    :cond_6
    :goto_2
    move v2, v4

    :goto_3
    instance-of v1, v1, Lʾᵎ/ᵔᵢ;

    if-eqz v1, :cond_8

    if-nez v2, :cond_7

    if-ne p1, v9, :cond_9

    :cond_7
    :goto_4
    return v4

    :cond_8
    return v2

    :cond_9
    :goto_5
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʾᵎ/ʽ;

    iget-object v1, v1, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    invoke-static {v1, p1, p2, p3}, Lʼʼ/ᵔᵢ;->ⁱˊ(Lʾᵎ/ˈ;ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)Lʼʼ/ᵔʾ;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˆʾ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object v0, v0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iput-object v1, v0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    :cond_0
    iput-object v1, p0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    iput-object v1, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    const/4 v0, 0x0

    iput v0, p0, Lʾᵎ/ʽ;->ᵎﹶ:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lʾᵎ/ʽ;->ᵔᵢ:I

    iput-boolean v0, p0, Lʾᵎ/ʽ;->ʽ:Z

    iput v0, p0, Lʾᵎ/ʽ;->ⁱˊ:I

    return-void
.end method

.method public final ˈ()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʾᵎ/ʽ;->ʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lʾᵎ/ʽ;->ⁱˊ:I

    return v0
.end method

.method public final ˑﹳ()I
    .locals 3

    .prologue
    iget-object v0, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget v0, v0, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lʾᵎ/ʽ;->ᵔᵢ:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget v2, v2, Lʾᵎ/ˈ;->ˊᵔ:I

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lʾᵎ/ʽ;->ᵎﹶ:I

    return v0
.end method

.method public final ٴﹶ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    if-nez v0, :cond_0

    new-instance v0, Lʻٴ/ᵔᵢ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʻٴ/ᵔᵢ;-><init>(I)V

    iput-object v0, p0, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    return-void

    :cond_0
    invoke-virtual {v0}, Lʻٴ/ᵔᵢ;->ʽ()V

    return-void
.end method

.method public final ᵎﹶ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ﾞᴵ()Lʾᵎ/ʽ;

    move-result-object v2

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ᵔᵢ()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final ᵔᵢ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ⁱˊ(Lʾᵎ/ʽ;IIZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʾᵎ/ʽ;->ˆʾ()V

    return v0

    :cond_0
    if-nez p4, :cond_1

    invoke-virtual {p0, p1}, Lʾᵎ/ʽ;->ʼˎ(Lʾᵎ/ʽ;)Z

    move-result p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iput-object p1, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object p4, p1, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-nez p4, :cond_2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    :cond_2
    iget-object p1, p0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object p1, p1, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iput p2, p0, Lʾᵎ/ʽ;->ᵎﹶ:I

    iput p3, p0, Lʾᵎ/ʽ;->ᵔᵢ:I

    return v0
.end method

.method public final ﹳٴ(Lʾᵎ/ʽ;I)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lʾᵎ/ʽ;->ⁱˊ(Lʾᵎ/ʽ;IIZ)Z

    return-void
.end method

.method public final ﾞʻ(I)V
    .locals 0

    iput p1, p0, Lʾᵎ/ʽ;->ⁱˊ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʾᵎ/ʽ;->ʽ:Z

    return-void
.end method

.method public final ﾞᴵ()Lʾᵎ/ʽ;
    .locals 3

    .prologue
    iget v0, p0, Lʾᵎ/ʽ;->ˑﹳ:I

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v1

    iget-object v2, p0, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Lʼﾞ/ˊˋ;->ᵢˏ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    iget-object v0, v2, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    return-object v0

    :pswitch_1
    iget-object v0, v2, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    return-object v0

    :pswitch_2
    iget-object v0, v2, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    return-object v0

    :pswitch_3
    iget-object v0, v2, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    return-object v0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
