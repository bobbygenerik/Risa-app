.class public final Lʾˈ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lʾﹳ/ⁱˊ;


# direct methods
.method public constructor <init>(Lʾﹳ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ﾞʻ;->ﹳٴ:Lʾﹳ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʾˈ/ˈʿ;)V
    .locals 4

    iget-object v0, p0, Lʾˈ/ﾞʻ;->ﹳٴ:Lʾﹳ/ⁱˊ;

    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵˆ/ˑﹳ;

    new-instance v1, Lᴵˆ/ⁱˊ;

    const-string v2, "json"

    invoke-direct {v1, v2}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    new-instance v2, Lʻʿ/ᵔﹳ;

    invoke-direct {v2, p0}, Lʻʿ/ᵔﹳ;-><init>(Lʾˈ/ﾞʻ;)V

    check-cast v0, Lˉˋ/ˉˆ;

    const-string v3, "FIREBASE_APPQUALITY_SESSION"

    invoke-virtual {v0, v3, v1, v2}, Lˉˋ/ˉˆ;->ﹳٴ(Ljava/lang/String;Lᴵˆ/ⁱˊ;Lᴵˆ/ˈ;)Landroidx/leanback/widget/ʻٴ;

    move-result-object v0

    new-instance v1, Lᴵˆ/ﹳٴ;

    sget-object v2, Lᴵˆ/ʽ;->ʾˋ:Lᴵˆ/ʽ;

    invoke-direct {v1, p1, v2}, Lᴵˆ/ﹳٴ;-><init>(Ljava/lang/Object;Lᴵˆ/ʽ;)V

    new-instance p1, Lʾˈ/ˏי;

    const/16 v2, 0xc

    invoke-direct {p1, v2}, Lʾˈ/ˏי;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ʻٴ;->ʻٴ(Lᴵˆ/ﹳٴ;Lᴵˆ/ﾞᴵ;)V

    return-void
.end method
