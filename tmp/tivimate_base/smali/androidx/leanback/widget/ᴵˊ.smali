.class public final Landroidx/leanback/widget/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroidx/leanback/widget/ˋᵔ;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ᴵˊ;->ﹳٴ:I

    iput-object p2, p0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    iget p3, p0, Landroidx/leanback/widget/ᴵˊ;->ﹳٴ:I

    packed-switch p3, :pswitch_data_0

    iget-object p3, p0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p3, Lʽᵔ/ⁱˊ;

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p3}, Lʽᵔ/ﾞᴵ;->ﾞˋ()Landroidx/preference/DialogPreference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->ٴᵢ(Ljava/lang/String;)V

    iget-object p1, p3, Lˑʼ/ᴵᵔ;->ـˏ:Lˑʼ/ʿ;

    invoke-virtual {p1}, Lˑʼ/ʿ;->ˈⁱ()V

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/SearchBar;

    iget-object p3, p1, Landroidx/leanback/widget/SearchBar;->ᵎⁱ:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    if-eq v0, p2, :cond_2

    if-nez p2, :cond_3

    :cond_2
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ﹳٴ()V

    new-instance p1, Landroidx/leanback/widget/ˊᵔ;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/leanback/widget/ˊᵔ;-><init>(Landroidx/leanback/widget/ᴵˊ;I)V

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    if-ne v3, p2, :cond_4

    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->ʾˋ:Landroidx/leanback/widget/ˈˏ;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ﹳٴ()V

    new-instance p1, Landroidx/leanback/widget/ˊᵔ;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/leanback/widget/ˊᵔ;-><init>(Landroidx/leanback/widget/ᴵˊ;I)V

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v0, p2, :cond_5

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->ﹳٴ()V

    new-instance p1, Landroidx/leanback/widget/ˊᵔ;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Landroidx/leanback/widget/ˊᵔ;-><init>(Landroidx/leanback/widget/ᴵˊ;I)V

    invoke-virtual {p3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_1
    iget-object p3, p0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast p3, Landroidx/leanback/widget/ˊʻ;

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p2, v0, :cond_8

    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_7

    iget-object p2, p3, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ˑﹳ(Landroidx/leanback/widget/ˊʻ;Landroid/widget/TextView;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    iget-object p2, p3, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈ(Landroidx/leanback/widget/ˊʻ;Landroid/widget/TextView;)V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Landroid/widget/EditText;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᴵˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ˊʻ;

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object p2, v0, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ˑﹳ(Landroidx/leanback/widget/ˊʻ;Landroid/widget/TextView;)V

    return v2

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_1

    iget-object p2, v0, Landroidx/leanback/widget/ˊʻ;->ˉʿ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈ(Landroidx/leanback/widget/ˊʻ;Landroid/widget/TextView;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
