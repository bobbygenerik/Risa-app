.class public final Lʼﾞ/ʿᵢ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lˑי/ʽ;

.field public final synthetic ˊʻ:Lʼﾞ/ᐧﾞ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼﾞ/ʿᵢ;->ˊʻ:Lʼﾞ/ᐧﾞ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʼﾞ/ʿᵢ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lʼﾞ/ʿᵢ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼﾞ/ʿᵢ;->ٴᵢ:I

    iget-object p1, p0, Lʼﾞ/ʿᵢ;->ˊʻ:Lʼﾞ/ᐧﾞ;

    invoke-virtual {p1, p0}, Lʼﾞ/ᐧﾞ;->ﾞᴵ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
