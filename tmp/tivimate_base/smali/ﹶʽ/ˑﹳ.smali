.class public final synthetic Lﹶʽ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ᵎﹶ;


# instance fields
.field public final synthetic ʾˋ:Lﹶʽ/ﹳᐧ;

.field public final synthetic ᴵˊ:Lﹶʽ/ˆʾ;


# direct methods
.method public synthetic constructor <init>(Lﹶʽ/ﹳᐧ;Lﹶʽ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶʽ/ˑﹳ;->ʾˋ:Lﹶʽ/ﹳᐧ;

    iput-object p2, p0, Lﹶʽ/ˑﹳ;->ᴵˊ:Lﹶʽ/ˆʾ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    check-cast p1, Lʽⁱ/ﹳᐧ;

    iget-object v0, p0, Lﹶʽ/ˑﹳ;->ʾˋ:Lﹶʽ/ﹳᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lﹶʽ/ˑﹳ;->ᴵˊ:Lﹶʽ/ˆʾ;

    iget-boolean v1, v1, Lﹶʽ/ˆʾ;->ᵢˏ:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lﹶʽ/ﹳᐧ;->ٴﹶ:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_0
    iget v1, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x2

    if-le v1, v4, :cond_7

    iget-object v1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "audio/eac3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v7, "audio/ac4"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0

    :sswitch_2
    const-string v4, "audio/ac3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "audio/eac3-joc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_7

    iget-object v1, v0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lﹶʽ/ˉʿ;->ⁱˊ:Z

    if-eqz v1, :cond_7

    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_6

    iget-object v1, v0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    if-eqz v1, :cond_6

    iget-boolean v3, v1, Lﹶʽ/ˉʿ;->ⁱˊ:Z

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lﹶʽ/ˉʿ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    invoke-virtual {v1}, Lﹶʽ/ˉʿ;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lﹶʽ/ﹳᐧ;->ʼˎ:Lﹶʽ/ˉʿ;

    iget-object v0, v0, Lﹶʽ/ﹳᐧ;->ˆʾ:Lʽⁱ/ˑﹳ;

    invoke-virtual {v1, v0, p1}, Lﹶʽ/ˉʿ;->ﹳٴ(Lʽⁱ/ˑﹳ;Lʽⁱ/ﹳᐧ;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v5

    :cond_7
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
