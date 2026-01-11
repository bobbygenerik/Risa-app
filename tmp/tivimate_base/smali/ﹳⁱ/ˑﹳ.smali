.class public Lﹳⁱ/ˑﹳ;
.super Lʻᴵ/ﾞᴵ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Lʽⁱ/ﹳᐧ;

.field public final ˈٴ:Lﹳⁱ/ʽ;

.field public ˉٴ:Ljava/nio/ByteBuffer;

.field public ˊʻ:Z

.field public final ٴʼ:I

.field public ٴᵢ:J

.field public ᴵᵔ:Ljava/nio/ByteBuffer;

.field public final ᵎⁱ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.decoder"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lʻᴵ/ﾞᴵ;-><init>(I)V

    new-instance v0, Lﹳⁱ/ʽ;

    invoke-direct {v0}, Lﹳⁱ/ʽ;-><init>()V

    iput-object v0, p0, Lﹳⁱ/ˑﹳ;->ˈٴ:Lﹳⁱ/ʽ;

    iput p1, p0, Lﹳⁱ/ˑﹳ;->ᵎⁱ:I

    iput p2, p0, Lﹳⁱ/ˑﹳ;->ٴʼ:I

    return-void
.end method


# virtual methods
.method public final ʻٴ(I)V
    .locals 3

    .prologue
    iget v0, p0, Lﹳⁱ/ˑﹳ;->ٴʼ:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lﹳⁱ/ˑﹳ;->ʽﹳ(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr p1, v2

    if-lt v1, p1, :cond_1

    iput-object v0, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lﹳⁱ/ˑﹳ;->ʽﹳ(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    iput-object p1, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final ʽﹳ(I)Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lﹳⁱ/ˑﹳ;->ᵎⁱ:I

    if-ne v1, v0, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    :goto_0
    new-instance v1, Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;

    const-string v2, " < "

    const-string v3, ")"

    const-string v4, "Buffer too small ("

    invoke-static {v4, v0, v2, p1, v3}, Lﹳˎ/ˆʾ;->ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public ˏי()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget-object v1, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v1, p0, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iput-boolean v0, p0, Lﹳⁱ/ˑﹳ;->ˊʻ:Z

    return-void
.end method

.method public final ـˆ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳⁱ/ˑﹳ;->ᴵᵔ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lﹳⁱ/ˑﹳ;->ˉٴ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method
