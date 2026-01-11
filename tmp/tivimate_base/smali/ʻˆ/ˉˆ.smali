.class public final Lʻˆ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˊﾞ/ٴᵢ;

.field public final ˈ:Lˊﾞ/ˉٴ;

.field public ˑﹳ:I

.field public final ⁱˊ:Lʻˆ/ـˆ;

.field public final ﹳٴ:Lʻˆ/ˏי;


# direct methods
.method public constructor <init>(Lʻˆ/ˏי;Lʻˆ/ـˆ;Lˊﾞ/ٴᵢ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻˆ/ˉˆ;->ﹳٴ:Lʻˆ/ˏי;

    iput-object p2, p0, Lʻˆ/ˉˆ;->ⁱˊ:Lʻˆ/ـˆ;

    iput-object p3, p0, Lʻˆ/ˉˆ;->ʽ:Lˊﾞ/ٴᵢ;

    iget-object p1, p1, Lʻˆ/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lˊﾞ/ˉٴ;

    invoke-direct {p1}, Lˊﾞ/ˉٴ;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lʻˆ/ˉˆ;->ˈ:Lˊﾞ/ˉٴ;

    return-void
.end method
