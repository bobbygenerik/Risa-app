.class public final Lʼˋ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵎﹶ;


# instance fields
.field public final synthetic ʽʽ:Lar/tvplayer/core/domain/ـˆ;

.field public final synthetic ʾˋ:Lᵎˈ/ᵎﹶ;

.field public final synthetic ᴵˊ:Lʼﾞ/ˊʻ;


# direct methods
.method public constructor <init>(Lᵎˈ/ᵎﹶ;Lʼﾞ/ˊʻ;Lar/tvplayer/core/domain/ـˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼˋ/ٴﹶ;->ʾˋ:Lᵎˈ/ᵎﹶ;

    iput-object p2, p0, Lʼˋ/ٴﹶ;->ᴵˊ:Lʼﾞ/ˊʻ;

    iput-object p3, p0, Lʼˋ/ٴﹶ;->ʽʽ:Lar/tvplayer/core/domain/ـˆ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 3

    .prologue
    new-instance v0, Lʼˋ/ˆʾ;

    iget-object v1, p0, Lʼˋ/ٴﹶ;->ᴵˊ:Lʼﾞ/ˊʻ;

    iget-object v2, p0, Lʼˋ/ٴﹶ;->ʽʽ:Lar/tvplayer/core/domain/ـˆ;

    invoke-direct {v0, p1, v1, v2}, Lʼˋ/ˆʾ;-><init>(Lᵎˈ/ᵔᵢ;Lʼﾞ/ˊʻ;Lar/tvplayer/core/domain/ـˆ;)V

    iget-object p1, p0, Lʼˋ/ٴﹶ;->ʾˋ:Lᵎˈ/ᵎﹶ;

    invoke-interface {p1, v0, p2}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
