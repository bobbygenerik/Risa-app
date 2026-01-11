.class public final Lˊﹶ/ﹳٴ;
.super Lˋʽ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final ˊʻ:Lˆˋ/ﹳٴ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lˆˋ/ﹳٴ;Lٴٴ/ⁱˊ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lˋʽ/ﹳٴ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lˋʽ/ﹳٴ;->ʾˋ:Ljava/io/InputStream;

    iput-object p4, p0, Lˋʽ/ﹳٴ;->ᴵˊ:Lٴٴ/ⁱˊ;

    new-instance p2, Ljava/lang/Thread;

    const-string p4, "Packet Reader for "

    invoke-static {p4, p1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p2, p0, Lˋʽ/ﹳٴ;->ˈٴ:Ljava/lang/Thread;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    iput-object p3, p0, Lˊﹶ/ﹳٴ;->ˊʻ:Lˆˋ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ʽ()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lˊﹶ/ﹳٴ;->ⁱˊ([B)V

    new-instance v1, Lˎʿ/ﹳٴ;

    const/4 v2, 0x1

    sget-object v3, Lˎʿ/ʽ;->ˈ:Lˎʿ/ʽ;

    invoke-direct {v1, v0, v2, v3}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    invoke-virtual {v1}, Lˎʿ/ⁱˊ;->ʼˎ()B

    const/4 v0, 0x3

    new-array v3, v0, [B

    invoke-virtual {v1, v0, v3}, Lˎʿ/ⁱˊ;->ˆʾ(I[B)V

    const/4 v0, 0x0

    aget-byte v0, v3, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    aget-byte v1, v3, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final ⁱˊ([B)V
    .locals 4

    .prologue
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lˋʽ/ﹳٴ;->ʾˋ:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hierynomus/protocol/transport/TransportException;

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF while reading packet"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void
.end method
