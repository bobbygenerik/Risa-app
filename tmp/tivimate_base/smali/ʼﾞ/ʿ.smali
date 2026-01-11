.class public final Lʼﾞ/ʿ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʼﾞ/ʾᵎ;

.field public ˉٴ:I

.field public ˊʻ:[Ljava/lang/String;

.field public final synthetic ٴʼ:Lʼﾞ/ᐧﾞ;

.field public ٴᵢ:I

.field public ᴵᵔ:Ljava/lang/String;

.field public ᵎˊ:I

.field public synthetic ᵎⁱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼﾞ/ʿ;->ٴʼ:Lʼﾞ/ᐧﾞ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lʼﾞ/ʿ;->ᵎⁱ:Ljava/lang/Object;

    iget p1, p0, Lʼﾞ/ʿ;->ᵎˊ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼﾞ/ʿ;->ᵎˊ:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lʼﾞ/ʿ;->ٴʼ:Lʼﾞ/ᐧﾞ;

    invoke-static {v1, p1, v0, p0}, Lʼﾞ/ᐧﾞ;->ˈ(Lʼﾞ/ᐧﾞ;Lʼﾞ/ˋᵔ;ILᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
