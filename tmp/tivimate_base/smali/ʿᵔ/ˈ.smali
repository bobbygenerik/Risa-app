.class public Lʿᵔ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵔ/ٴﹶ;


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Lˈי/ᵔᵢ;

.field public final synthetic ˈٴ:I

.field public final ᴵˊ:I

.field public final ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V
    .locals 0

    iput p5, p0, Lʿᵔ/ˈ;->ˈٴ:I

    invoke-direct {p0, p2, p3, p4}, Lʿᵔ/ˈ;-><init>(Lˈי/ᵔᵢ;II)V

    iput-object p1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˈי/ᵔᵢ;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵔ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    iput p2, p0, Lʿᵔ/ˈ;->ᴵˊ:I

    iput p3, p0, Lʿᵔ/ˈ;->ʽʽ:I

    return-void
.end method

.method public constructor <init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʿᵔ/ˈ;->ˈٴ:I

    invoke-direct {p0, p2, p3, p4}, Lʿᵔ/ˈ;-><init>(Lˈי/ᵔᵢ;II)V

    check-cast p1, Lᴵʾ/ᵔᵢ;

    iput-object p1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lʿᵔ/ˈ;->ˈٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lʿᵔ/ˈ;->ﾞᴵ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵʾ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lʿᵔ/ˈ;->ﾞᴵ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᵎˈ/ᵎﹶ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lʿᵔ/ˈ;->ﾞᴵ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final ʽ(Lˈי/ᵔᵢ;II)Lᵎˈ/ᵎﹶ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʿᵔ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    invoke-interface {p1, v0}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    const/4 v1, 0x1

    iget v2, p0, Lʿᵔ/ˈ;->ʽʽ:I

    iget v3, p0, Lʿᵔ/ˈ;->ᴵˊ:I

    if-eq p3, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, -0x3

    if-ne v3, p3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_2
    const/4 p3, -0x2

    if-ne v3, p3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, p3, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p2, v3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    move p3, v2

    :goto_2
    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v3, :cond_6

    if-ne p3, v2, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lʿᵔ/ˈ;->ˑﹳ(Lˈי/ᵔᵢ;II)Lʿᵔ/ˈ;

    move-result-object p1

    return-object p1
.end method

.method public ˈ(Lʽʿ/יـ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʿᵔ/ˈ;->ˈٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lᴵʾ/ᵔᵢ;

    invoke-interface {v0, p1, p2}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_0
    return-object p1

    :pswitch_0
    new-instance p2, Lʿᵔ/ᵔﹳ;

    invoke-direct {p2, p1}, Lʿᵔ/ᵔﹳ;-><init>(Lʽʿ/יـ;)V

    iget-object v0, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵎˈ/ᵎﹶ;

    new-instance v2, Lʼˋ/ﾞᴵ;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-direct {v2, v1, p2, v4, v3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 v1, 0x3

    invoke-static {p1, v4, v2, v1}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    goto :goto_1

    :cond_1
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_1
    new-instance v0, Lʿᵔ/ᵔﹳ;

    invoke-direct {v0, p1}, Lʿᵔ/ᵔﹳ;-><init>(Lʽʿ/יـ;)V

    iget-object p1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lᵎˈ/ᵎﹶ;

    invoke-interface {p1, v0, p2}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    if-ne p1, v0, :cond_3

    move-object p2, p1

    :cond_3
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(Lˈי/ᵔᵢ;II)Lʿᵔ/ˈ;
    .locals 9

    .prologue
    iget v0, p0, Lʿᵔ/ˈ;->ˈٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʿᵔ/ˈ;

    iget-object v1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵʾ/ᵔᵢ;

    invoke-direct {v0, v1, p1, p2, p3}, Lʿᵔ/ˈ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V

    return-object v0

    :pswitch_0
    new-instance v2, Lʿᵔ/ˈ;

    iget-object v3, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    const/4 v7, 0x1

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lʿᵔ/ˈ;-><init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V

    return-object v2

    :pswitch_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    new-instance v3, Lʿᵔ/ˈ;

    iget-object p1, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lᵎˈ/ᵎﹶ;

    const/4 v8, 0x0

    move v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lʿᵔ/ˈ;-><init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lʿᵔ/ˈ;->ˈٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lʿᵔ/ˈ;->ﹳٴ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget v0, p0, Lʿᵔ/ˈ;->ᴵˊ:I

    const/4 v1, -0x3

    sget-object v2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    sget-object v3, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v0, v1, :cond_5

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lʼⁱ/ˎᐧ;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Lʼⁱ/ˎᐧ;-><init>(I)V

    iget-object v5, p0, Lʿᵔ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    invoke-interface {v5, v1, v4}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, v5}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0, v5, v4}, Lᴵי/ʾᵎ;->ᵔᵢ(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;Z)Lˈי/ᵔᵢ;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lʿᵔ/ˈ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lᵎˈ/ᵎﹶ;

    invoke-interface {v0, p1, p2}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-ne p1, v3, :cond_6

    :goto_2
    move-object v2, p1

    goto :goto_4

    :cond_2
    sget-object v5, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {v1, v5}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v6

    invoke-interface {v0, v5}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    invoke-static {v6, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    instance-of v5, p1, Lʿᵔ/ᵔﹳ;

    if-nez v5, :cond_4

    instance-of v5, p1, Lʿᵔ/ˉʿ;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance v5, Lʼˋ/ˆʾ;

    invoke-direct {v5, p1, v0}, Lʼˋ/ˆʾ;-><init>(Lᵎˈ/ᵔᵢ;Lˈי/ᵔᵢ;)V

    move-object p1, v5

    :cond_4
    :goto_3
    new-instance v0, Lʼˋ/ﾞᴵ;

    const/4 v5, 0x0

    const/16 v6, 0xe

    invoke-direct {v0, p0, v5, v6}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lˊʽ/ⁱˊ;->ˑﹳ:Lʼⁱ/ˎᐧ;

    invoke-interface {v1, v4, v5}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, p1, v4, v0, p2}, Lʿᵔ/ⁱˊ;->ﹳٴ(Lˈי/ᵔᵢ;Ljava/lang/Object;Ljava/lang/Object;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2}, Lʿᵔ/ˈ;->ﹳٴ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 3

    .prologue
    new-instance v0, Lʼˋ/ᵔʾ;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, p1, p0, v1, v2}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance p1, Lˊʽ/ᵔﹳ;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    const/4 p2, 0x1

    invoke-static {p1, p2, p1, v0}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method

.method public final ﾞᴵ()Ljava/lang/String;
    .locals 7

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    iget-object v2, p0, Lʿᵔ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    if-eq v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "context="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, -0x3

    iget v2, p0, Lʿᵔ/ˈ;->ᴵˊ:I

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "capacity="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lʿᵔ/ˈ;->ʽʽ:I

    if-eq v2, v1, :cond_5

    const/4 v1, 0x1

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const-string v1, "null"

    goto :goto_0

    :cond_2
    const-string v1, "DROP_LATEST"

    goto :goto_0

    :cond_3
    const-string v1, "DROP_OLDEST"

    goto :goto_0

    :cond_4
    const-string v1, "SUSPEND"

    :goto_0
    const-string v2, "onBufferOverflow="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-static {v6, v0, v1}, Lˉˆ/ٴᴵ;->ﾞʻ(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
