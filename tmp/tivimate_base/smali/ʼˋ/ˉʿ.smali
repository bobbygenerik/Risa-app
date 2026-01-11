.class public final Lʼˋ/ˉʿ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʼˋ/ˉˆ;

.field public synthetic ˉٴ:Ljava/lang/Object;

.field public ˊʻ:Lˊʼ/ˏי;

.field public ٴʼ:I

.field public ٴᵢ:J

.field public ᴵᵔ:Lᴵⁱ/ﹳٴ;

.field public final synthetic ᵎⁱ:Lʼˋ/ˉˆ;


# direct methods
.method public constructor <init>(Lʼˋ/ˉˆ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼˋ/ˉʿ;->ᵎⁱ:Lʼˋ/ˉˆ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lʼˋ/ˉʿ;->ˉٴ:Ljava/lang/Object;

    iget p1, p0, Lʼˋ/ˉʿ;->ٴʼ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼˋ/ˉʿ;->ٴʼ:I

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    iget-object v2, p0, Lʼˋ/ˉʿ;->ᵎⁱ:Lʼˋ/ˉˆ;

    invoke-virtual {v2, v0, v1, p1, p0}, Lʼˋ/ˉˆ;->ⁱˊ(JLʼˋ/ˈ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
