.class public final Lʿᵢ/ᵎˊ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʿᵢ/ᵔי;

.field public synthetic ˉٴ:Ljava/lang/Object;

.field public ˊʻ:Ljava/lang/Object;

.field public ٴʼ:I

.field public ٴᵢ:Lʿᵢ/ᵔٴ;

.field public ᴵᵔ:Ljava/lang/Object;

.field public final synthetic ᵎⁱ:Lʿᵢ/ᵔי;


# direct methods
.method public constructor <init>(Lʿᵢ/ᵔי;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ᵎˊ;->ᵎⁱ:Lʿᵢ/ᵔי;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ᵎˊ;->ˉٴ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ᵎˊ;->ٴʼ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ᵎˊ;->ٴʼ:I

    iget-object p1, p0, Lʿᵢ/ᵎˊ;->ᵎⁱ:Lʿᵢ/ᵔי;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ᵔי;->ˈ(Lʿᵢ/ʽʽ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
