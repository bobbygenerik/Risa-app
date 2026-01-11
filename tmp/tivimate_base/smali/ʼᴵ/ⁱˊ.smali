.class public final Lʼᴵ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public ʽʽ:I

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʼᴵ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᴵ/ⁱˊ;->ᴵˊ:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lʼᴵ/ʽ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʼᴵ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lʼᴵ/ʽ;->ﹳٴ:Lʼᴵ/ﾞᴵ;

    invoke-interface {v0}, Lʼᴵ/ﾞᴵ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lʼᴵ/ⁱˊ;->ᴵˊ:Ljava/util/Iterator;

    iget p1, p1, Lʼᴵ/ʽ;->ⁱˊ:I

    iput p1, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lʼᴵ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼᴵ/ⁱˊ;->ᴵˊ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    :goto_0
    :pswitch_0
    iget v0, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    iget-object v1, p0, Lʼᴵ/ⁱˊ;->ᴵˊ:Ljava/util/Iterator;

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʼᴵ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lﹶˈ/יـ;

    iget v1, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lʼᴵ/ⁱˊ;->ᴵˊ:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lﹶˈ/יـ;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lﹶˈ/ٴﹶ;->ᐧﾞ()V

    const/4 v0, 0x0

    throw v0

    :goto_0
    :pswitch_0
    iget v0, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    iget-object v1, p0, Lʼᴵ/ⁱˊ;->ᴵˊ:Ljava/util/Iterator;

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    iget v0, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lʼᴵ/ⁱˊ;->ʽʽ:I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .prologue
    iget v0, p0, Lʼᴵ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
