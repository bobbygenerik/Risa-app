.class public final Lﹳˋ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Lˎʿ/ﹳٴ;

.field public ˈٴ:Lﹳˋ/ᵔᵢ;

.field public final ᴵˊ:Lﹳˋ/ˉˆ;


# direct methods
.method public constructor <init>([BLﹳˋ/ˉˆ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˎʿ/ﹳٴ;

    sget-object v1, Lˎʿ/ʽ;->ʽ:Lˎʿ/ʽ;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2, v1}, Lˎʿ/ⁱˊ;-><init>([BZLˎʿ/ʽ;)V

    iput-object v0, p0, Lﹳˋ/ʽﹳ;->ʾˋ:Lˎʿ/ﹳٴ;

    iput-object p2, p0, Lﹳˋ/ʽﹳ;->ᴵˊ:Lﹳˋ/ˉˆ;

    const/4 p1, 0x0

    iput p1, p0, Lﹳˋ/ʽﹳ;->ʽʽ:I

    invoke-virtual {p0}, Lﹳˋ/ʽﹳ;->ﹳٴ()Lﹳˋ/ᵔᵢ;

    move-result-object p1

    iput-object p1, p0, Lﹳˋ/ʽﹳ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹳˋ/ʽﹳ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳˋ/ʽﹳ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹳˋ/ʽﹳ;->ﹳٴ()Lﹳˋ/ᵔᵢ;

    move-result-object v1

    iput-object v1, p0, Lﹳˋ/ʽﹳ;->ˈٴ:Lﹳˋ/ᵔᵢ;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ﹳٴ()Lﹳˋ/ᵔᵢ;
    .locals 5

    .prologue
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget v1, p0, Lﹳˋ/ʽﹳ;->ʽʽ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lﹳˋ/ʽﹳ;->ʾˋ:Lˎʿ/ﹳٴ;

    iput v1, v0, Lˎʿ/ⁱˊ;->ʽ:I

    iget-object v1, p0, Lﹳˋ/ʽﹳ;->ᴵˊ:Lﹳˋ/ˉˆ;

    invoke-interface {v1, v0}, Lﹳˋ/ˉˆ;->ʽ(Lˎʿ/ⁱˊ;)Lﹳˋ/ᵔﹳ;

    move-result-object v0

    check-cast v0, Lﹳˋ/ᵔᵢ;

    iget-wide v3, v0, Lﹳˋ/ᵔᵢ;->ᴵˊ:J

    long-to-int v1, v3

    if-nez v1, :cond_0

    iput v2, p0, Lﹳˋ/ʽﹳ;->ʽʽ:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v2, p0, Lﹳˋ/ʽﹳ;->ʽʽ:I

    add-int/2addr v2, v1

    iput v2, p0, Lﹳˋ/ʽﹳ;->ʽʽ:I
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v0
.end method
