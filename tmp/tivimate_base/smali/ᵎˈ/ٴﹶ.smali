.class public final Lᵎˈ/ٴﹶ;
.super Lᴵʾ/ʽ;


# instance fields
.field public synthetic ˈٴ:Ljava/lang/Object;

.field public ˉٴ:Lᵎˈ/ᵔᵢ;

.field public final synthetic ˊʻ:Lᵎˈ/ﾞʻ;

.field public ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(Lᵎˈ/ﾞʻ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lᵎˈ/ٴﹶ;->ˊʻ:Lᵎˈ/ﾞʻ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᵎˈ/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    iget p1, p0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    iget-object p1, p0, Lᵎˈ/ٴﹶ;->ˊʻ:Lᵎˈ/ﾞʻ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lᵎˈ/ﾞʻ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
