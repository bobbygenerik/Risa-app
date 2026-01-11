.class public final Lᵎʽ/ʼˎ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lᵎʽ/ˆʾ;

.field public final synthetic ˊʻ:Lᵎʽ/ˆʾ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lᵎʽ/ˆʾ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lᵎʽ/ʼˎ;->ˊʻ:Lᵎʽ/ˆʾ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᵎʽ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    iget-object p1, p0, Lᵎʽ/ʼˎ;->ˊʻ:Lᵎʽ/ˆʾ;

    invoke-virtual {p1, p0}, Lᵎʽ/ˆʾ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
