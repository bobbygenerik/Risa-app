.class public final Lʼˋ/ﾞʻ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʼˋ/ˉˆ;

.field public final synthetic ˊʻ:Lʼˋ/ˉˆ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʼˋ/ˉˆ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼˋ/ﾞʻ;->ˊʻ:Lʼˋ/ˉˆ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʼˋ/ﾞʻ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lʼˋ/ﾞʻ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼˋ/ﾞʻ;->ٴᵢ:I

    iget-object p1, p0, Lʼˋ/ﾞʻ;->ˊʻ:Lʼˋ/ˉˆ;

    invoke-virtual {p1, p0}, Lʼˋ/ˉˆ;->ﹳٴ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
