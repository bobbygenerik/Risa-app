.class public final Lᐧﾞ/ﾞᴵ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʿᵢ/ᵔי;

.field public final synthetic ˉٴ:Lʿᵢ/ᵔי;

.field public ˊʻ:Z

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Lᐧﾞ/ⁱˊ;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>(Lʿᵢ/ᵔי;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lᐧﾞ/ﾞᴵ;->ˉٴ:Lʿᵢ/ᵔי;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᐧﾞ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    iget p1, p0, Lᐧﾞ/ﾞᴵ;->ᵎⁱ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᐧﾞ/ﾞᴵ;->ᵎⁱ:I

    iget-object p1, p0, Lᐧﾞ/ﾞᴵ;->ˉٴ:Lʿᵢ/ᵔי;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ᵔי;->ʽ(Lʿᵢ/ˉˆ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
