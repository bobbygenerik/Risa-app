.class public final Lʿᵢ/ʼˎ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/lang/Object;

.field public ˉٴ:Lʿᵢ/ˈٴ;

.field public ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴʼ:Lʿᵢ/ˆʾ;

.field public ٴᵢ:Lˊʼ/ˏי;

.field public ᴵᵔ:Ljava/lang/Object;

.field public ᵎˊ:I

.field public synthetic ᵎⁱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʿᵢ/ˆʾ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ʼˎ;->ٴʼ:Lʿᵢ/ˆʾ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ʼˎ;->ᵎⁱ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ʼˎ;->ᵎˊ:I

    iget-object p1, p0, Lʿᵢ/ʼˎ;->ٴʼ:Lʿᵢ/ˆʾ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ˆʾ;->ﹳٴ(Lʿᵢ/ﾞᴵ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
