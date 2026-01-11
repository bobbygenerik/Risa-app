.class public final Lʽʿ/ˑﹳ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public synthetic ˈٴ:Ljava/lang/Object;

.field public ˊʻ:I

.field public final synthetic ᴵᵔ:Lʽʿ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lʽʿ/ﾞᴵ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʽʿ/ˑﹳ;->ᴵᵔ:Lʽʿ/ﾞᴵ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    iput-object p1, p0, Lʽʿ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    iget p1, p0, Lʽʿ/ˑﹳ;->ˊʻ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʽʿ/ˑﹳ;->ˊʻ:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lʽʿ/ˑﹳ;->ᴵᵔ:Lʽʿ/ﾞᴵ;

    const/4 v1, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lʽʿ/ﾞᴵ;->ʽʽ(Lʽʿ/ˉˆ;IJLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lʽʿ/ᵔʾ;

    invoke-direct {v0, p1}, Lʽʿ/ᵔʾ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
