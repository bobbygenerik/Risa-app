.class public final Lﹶﾞ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lﹶﾞ/יـ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ﹳᐧ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lﹶﾞ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﾞʽ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹶﾞ/ﹳᐧ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ﹳᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lﹶﾞ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﾞʽ/ﹳٴ;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ﹳᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lﹶﾞ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞʽ/ﹳٴ;

    invoke-virtual {v0}, Lﾞʽ/ﹳٴ;->ᵎﹶ()Lˎᵔ/ⁱˊ;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .prologue
    iget v0, p0, Lﹶﾞ/ﹳᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported on ASN.1 InputStream iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
