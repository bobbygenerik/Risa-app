.class public abstract Lﹶﾞ/ˎᵎ;
.super Lﹶﾞ/ˏʻ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Z


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 1

    invoke-direct {p0, p1}, Lﹶﾞ/ˏʻ;-><init>(Lﹶﾞ/ᵢי;)V

    iget-object p1, p0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget v0, p1, Lﹶﾞ/ᵢי;->ˊˋ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lﹶﾞ/ᵢי;->ˊˋ:I

    return-void
.end method


# virtual methods
.method public final ʽˑ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ˎᵎ;->ʽʽ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ˎᵎ;->ˋˊ()V

    iget-object v0, p0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget v1, v0, Lﹶﾞ/ᵢי;->ʼˈ:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lﹶﾞ/ᵢי;->ʼˈ:I

    iput-boolean v2, p0, Lﹶﾞ/ˎᵎ;->ʽʽ:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract ˋˊ()V
.end method

.method public final ﹶˎ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ˎᵎ;->ʽʽ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
