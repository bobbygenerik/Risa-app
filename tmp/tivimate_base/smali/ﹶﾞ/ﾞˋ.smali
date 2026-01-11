.class public final synthetic Lﹶﾞ/ﾞˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic ʾˋ:Lﹶﾞ/ˈـ;


# direct methods
.method public synthetic constructor <init>(Lﹶﾞ/ˈـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ﾞˋ;->ʾˋ:Lﹶﾞ/ˈـ;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .prologue
    iget-object p1, p0, Lﹶﾞ/ﾞˋ;->ʾˋ:Lﹶﾞ/ˈـ;

    iget-object v0, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    const/4 v2, 0x0

    sget-object v3, Lﹶﾞ/ᴵᵔ;->ﹶʽ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v1

    const-wide/16 v2, 0x1f4

    const-string v4, "IABTCF_TCString change picked up in listener."

    const-string v5, "IABTCF_TCString"

    if-nez v1, :cond_0

    invoke-static {p2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {p2, v4}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object p1, p1, Lﹶﾞ/ˈـ;->ˈⁱ:Lﹶﾞ/ﹳⁱ;

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v3}, Lﹶﾞ/ᵔʾ;->ⁱˊ(J)V

    return-void

    :cond_0
    invoke-static {p2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "IABTCF_gdprApplies"

    invoke-static {p2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "IABTCF_EnableAdvertiserConsentMode"

    invoke-static {p2, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-virtual {p2, v4}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object p1, p1, Lﹶﾞ/ˈـ;->ˈⁱ:Lﹶﾞ/ﹳⁱ;

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v3}, Lﹶﾞ/ᵔʾ;->ⁱˊ(J)V

    return-void
.end method
