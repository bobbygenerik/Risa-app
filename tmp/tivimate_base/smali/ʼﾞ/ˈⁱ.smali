.class public final Lʼﾞ/ˈⁱ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʼﾞ/ᐧﾞ;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʼﾞ/ᐧﾞ;

.field public ᴵᵔ:Lˑי/ʽ;


# direct methods
.method public constructor <init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼﾞ/ˈⁱ;->ٴᵢ:Lʼﾞ/ᐧﾞ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʼﾞ/ˈⁱ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʼﾞ/ˈⁱ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼﾞ/ˈⁱ;->ˉٴ:I

    iget-object p1, p0, Lʼﾞ/ˈⁱ;->ٴᵢ:Lʼﾞ/ᐧﾞ;

    invoke-static {p1, p0}, Lʼﾞ/ᐧﾞ;->ⁱˊ(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
