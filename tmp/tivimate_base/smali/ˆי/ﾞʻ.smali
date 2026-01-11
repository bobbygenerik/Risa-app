.class public final Lˆי/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:[B

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    iput p1, p0, Lˆי/ﾞʻ;->ﹳٴ:I

    new-array p1, p1, [B

    iput-object p1, p0, Lˆי/ﾞʻ;->ⁱˊ:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid distance: "

    invoke-static {p1, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˆי/ﾞʻ;->ⁱˊ:[B

    iput p1, p0, Lˆי/ﾞʻ;->ﹳٴ:I

    return-void
.end method
