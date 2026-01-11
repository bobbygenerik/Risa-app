.class public final Lᐧﾞ/ﹳٴ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/lang/Object;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lᐧﾞ/ⁱˊ;

.field public ᴵᵔ:Lˊᐧ/ـˆ;


# direct methods
.method public constructor <init>(Lᐧﾞ/ⁱˊ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lᐧﾞ/ﹳٴ;->ٴᵢ:Lᐧﾞ/ⁱˊ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᐧﾞ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    iget-object p1, p0, Lᐧﾞ/ﹳٴ;->ٴᵢ:Lᐧﾞ/ⁱˊ;

    invoke-static {p1, p0}, Lᐧﾞ/ⁱˊ;->ʽ(Lᐧﾞ/ⁱˊ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
