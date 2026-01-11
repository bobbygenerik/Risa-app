.class public final Lʿᵢ/ᐧᴵ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lˏˆ/ﹳٴ;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lˏˆ/ﹳٴ;

.field public ᴵᵔ:Lﹶי/ﹳٴ;


# direct methods
.method public constructor <init>(Lˏˆ/ﹳٴ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ᐧᴵ;->ٴᵢ:Lˏˆ/ﹳٴ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ᐧᴵ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ᐧᴵ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ᐧᴵ;->ˉٴ:I

    iget-object p1, p0, Lʿᵢ/ᐧᴵ;->ٴᵢ:Lˏˆ/ﹳٴ;

    invoke-virtual {p1, p0}, Lˏˆ/ﹳٴ;->ٴʼ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
