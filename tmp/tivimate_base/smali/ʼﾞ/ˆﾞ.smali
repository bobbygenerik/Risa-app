.class public final Lʼﾞ/ˆﾞ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʼﾞ/ٴᵢ;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʼﾞ/ٴᵢ;

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(Lʼﾞ/ٴᵢ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼﾞ/ˆﾞ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʼﾞ/ˆﾞ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʼﾞ/ˆﾞ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼﾞ/ˆﾞ;->ˉٴ:I

    iget-object p1, p0, Lʼﾞ/ˆﾞ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    invoke-static {p1, p0}, Lʼﾞ/ٴᵢ;->ﾞʻ(Lʼﾞ/ٴᵢ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
