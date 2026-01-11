.class public final Lʻˆ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ⁱˊ:Z

.field public ﹳٴ:Z


# direct methods
.method public synthetic constructor <init>(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lʻˆ/ˑﹳ;->ﹳٴ:Z

    iput-boolean p2, p0, Lʻˆ/ˑﹳ;->ⁱˊ:Z

    iput-boolean p3, p0, Lʻˆ/ˑﹳ;->ʽ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ⁱˊ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʻˆ/ˑﹳ;->ʽ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lʻˆ/ˑﹳ;->ⁱˊ:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lʻˆ/ˑﹳ;->ﹳٴ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ﹳٴ()Lﹶ/ﾞᴵ;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʻˆ/ˑﹳ;->ﹳٴ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lʻˆ/ˑﹳ;->ⁱˊ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lʻˆ/ˑﹳ;->ʽ:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secondary offload attribute fields are true but primary isFormatSupported is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lﹶ/ﾞᴵ;

    invoke-direct {v0, p0}, Lﹶ/ﾞᴵ;-><init>(Lʻˆ/ˑﹳ;)V

    return-object v0
.end method
