.class public final Lʿᵢ/ʻˋ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lˊᐧ/ᵎﹶ;I)V
    .locals 0

    iput p2, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    iput-object p1, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method private final ʽ()V
    .locals 0

    return-void
.end method

.method private final ˉˆ()V
    .locals 0

    return-void
.end method

.method private final ᵎﹶ()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ʻٴ;

    invoke-virtual {v0}, Lˊᐧ/ʻٴ;->close()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ʻٴ;

    iget-boolean v1, v0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lˊᐧ/ʻٴ;->flush()V

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊᐧ/ʻٴ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(I)V
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ʻٴ;

    iget-boolean v1, v0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    invoke-virtual {v0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lˊᐧ/ﾞᴵ;->ʾˊ(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write([B)V
    .locals 1

    .prologue
    iget v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    iget v0, p0, Lʿᵢ/ʻˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ʻٴ;

    iget-boolean v1, v0, Lˊᐧ/ʻٴ;->ʽʽ:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v1, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->write([BII)V

    invoke-virtual {v0}, Lˊᐧ/ʻٴ;->ʽ()Lˊᐧ/ᵎﹶ;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->write([BII)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʿᵢ/ʻˋ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
