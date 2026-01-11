.class public abstract Lʾﾞ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﾞ/ᵔᵢ;


# instance fields
.field public ʽ:Lʾﾞ/ᵎﹶ;

.field public ˈ:Lʾﾞ/ᵎﹶ;

.field public ˑﹳ:Lʾﾞ/ᵎﹶ;

.field public ᵎﹶ:Ljava/nio/ByteBuffer;

.field public ᵔᵢ:Z

.field public ⁱˊ:Lʾﾞ/ᵎﹶ;

.field public ﾞᴵ:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ﾞᴵ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    sget-object v0, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ˈ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ⁱˊ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ʽ:Lʾﾞ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1

    sget-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʾﾞ/ʼˎ;->ᵔᵢ:Z

    iget-object v0, p0, Lʾﾞ/ʼˎ;->ˈ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ⁱˊ:Lʾﾞ/ᵎﹶ;

    iget-object v0, p0, Lʾﾞ/ʼˎ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ʽ:Lʾﾞ/ᵎﹶ;

    invoke-virtual {p0}, Lʾﾞ/ʼˎ;->ᵔᵢ()V

    return-void
.end method

.method public final reset()V
    .locals 2

    sget-object v0, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʾﾞ/ʼˎ;->ᵔᵢ:Z

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ﾞᴵ:Ljava/nio/ByteBuffer;

    sget-object v0, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ˈ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ⁱˊ:Lʾﾞ/ᵎﹶ;

    iput-object v0, p0, Lʾﾞ/ʼˎ;->ʽ:Lʾﾞ/ᵎﹶ;

    invoke-virtual {p0}, Lʾﾞ/ʼˎ;->ˆʾ()V

    return-void
.end method

.method public ʼˎ()V
    .locals 0

    return-void
.end method

.method public ʽ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʾﾞ/ʼˎ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    sget-object v1, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ˆʾ()V
    .locals 0

    return-void
.end method

.method public ˈ()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    sget-object v1, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final ˑﹳ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʾﾞ/ʼˎ;->ᵔᵢ:Z

    invoke-virtual {p0}, Lʾﾞ/ʼˎ;->ʼˎ()V

    return-void
.end method

.method public final ٴﹶ(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    iget-object v0, p0, Lʾﾞ/ʼˎ;->ﾞᴵ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lʾﾞ/ʼˎ;->ﾞᴵ:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lʾﾞ/ʼˎ;->ﾞᴵ:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lʾﾞ/ʼˎ;->ﾞᴵ:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final ᵎﹶ(Lʾﾞ/ᵎﹶ;)Lʾﾞ/ᵎﹶ;
    .locals 0

    .prologue
    iput-object p1, p0, Lʾﾞ/ʼˎ;->ˈ:Lʾﾞ/ᵎﹶ;

    invoke-virtual {p0, p1}, Lʾﾞ/ʼˎ;->ﹳٴ(Lʾﾞ/ᵎﹶ;)Lʾﾞ/ᵎﹶ;

    move-result-object p1

    iput-object p1, p0, Lʾﾞ/ʼˎ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    invoke-virtual {p0}, Lʾﾞ/ʼˎ;->ʽ()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lʾﾞ/ʼˎ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    return-object p1

    :cond_0
    sget-object p1, Lʾﾞ/ᵎﹶ;->ˑﹳ:Lʾﾞ/ᵎﹶ;

    return-object p1
.end method

.method public ᵔᵢ()V
    .locals 0

    return-void
.end method

.method public ⁱˊ()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʾﾞ/ʼˎ;->ᵔᵢ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʾﾞ/ʼˎ;->ᵎﹶ:Ljava/nio/ByteBuffer;

    sget-object v1, Lʾﾞ/ᵔᵢ;->ﹳٴ:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract ﹳٴ(Lʾﾞ/ᵎﹶ;)Lʾﾞ/ᵎﹶ;
.end method
