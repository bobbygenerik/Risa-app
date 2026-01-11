.class public final Lᵎˈ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵎﹶ;


# instance fields
.field public final ʾˋ:Lᵎˈ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lᵎˈ/ᵎﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎˈ/ﾞᴵ;->ʾˋ:Lᵎˈ/ᵎﹶ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 2

    .prologue
    new-instance v0, Lˊʼ/ˏי;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    iput-object v1, v0, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    new-instance v1, Lᵎˈ/ˑﹳ;

    invoke-direct {v1, p0, v0, p1}, Lᵎˈ/ˑﹳ;-><init>(Lᵎˈ/ﾞᴵ;Lˊʼ/ˏי;Lᵎˈ/ᵔᵢ;)V

    iget-object p1, p0, Lᵎˈ/ﾞᴵ;->ʾˋ:Lᵎˈ/ᵎﹶ;

    invoke-interface {p1, v1, p2}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
