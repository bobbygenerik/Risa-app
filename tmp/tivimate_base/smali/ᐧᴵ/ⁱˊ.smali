.class public final Lᐧᴵ/ⁱˊ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lᐧᴵ/ʽ;

.field public final synthetic ˊʻ:Lᐧᴵ/ʽ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lᐧᴵ/ʽ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lᐧᴵ/ⁱˊ;->ˊʻ:Lᐧᴵ/ʽ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᐧᴵ/ⁱˊ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lᐧᴵ/ⁱˊ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᐧᴵ/ⁱˊ;->ٴᵢ:I

    iget-object p1, p0, Lᐧᴵ/ⁱˊ;->ˊʻ:Lᐧᴵ/ʽ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lᐧᴵ/ʽ;->ﹳٴ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
