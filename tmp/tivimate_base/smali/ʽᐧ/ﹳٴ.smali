.class public final Lʽᐧ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ⁱˊ:J

.field public final ﹳٴ:Lʼʻ/ᵎⁱ;


# direct methods
.method public constructor <init>(JJLjava/util/List;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p5

    iput-object p5, p0, Lʽᐧ/ﹳٴ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    iput-wide p1, p0, Lʽᐧ/ﹳٴ;->ⁱˊ:J

    iput-wide p3, p0, Lʽᐧ/ﹳٴ;->ʽ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p5, p1, v0

    if-eqz p5, :cond_1

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long v0, p1, p3

    :cond_1
    :goto_0
    iput-wide v0, p0, Lʽᐧ/ﹳٴ;->ˈ:J

    return-void
.end method
