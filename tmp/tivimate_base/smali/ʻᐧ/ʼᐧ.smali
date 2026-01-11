.class public abstract Lʻᐧ/ʼᐧ;
.super Lˑʼ/ʻٴ;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public ˈـ:Ljava/lang/CharSequence;

.field public ˎʾ:Ljava/lang/CharSequence;

.field public ˎˉ:I

.field public ˑˆ:Ljava/lang/CharSequence;

.field public יˉ:Landroidx/preference/DialogPreference;

.field public ᵢˋ:I

.field public ﹳᵢ:Landroid/graphics/drawable/BitmapDrawable;

.field public ﾞˋ:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lˑʼ/ʻٴ;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lʻᐧ/ʼᐧ;->ᵢˋ:I

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ʻٴ;->onDismiss(Landroid/content/DialogInterface;)V

    iget p1, p0, Lʻᐧ/ʼᐧ;->ᵢˋ:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lʻᐧ/ʼᐧ;->ﹶʽ(Z)V

    return-void
.end method

.method public ʽᵔ(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ʻٴ;->ʽᵔ(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lˑʼ/ᴵᵔ;->ᴵʼ(Z)Lˑʼ/ᴵᵔ;

    move-result-object v0

    instance-of v1, v0, Lʻᐧ/ˏי;

    if-eqz v1, :cond_5

    check-cast v0, Lʻᐧ/ˏי;

    iget-object v1, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v0, v1}, Lʻᐧ/ˏי;->ﾞˋ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Lʻᐧ/ʼᐧ;->יˉ:Landroidx/preference/DialogPreference;

    iget-object v0, p1, Landroidx/preference/DialogPreference;->ـᵎ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ﾞˋ:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/DialogPreference;->י:Ljava/lang/String;

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ˈـ:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/DialogPreference;->ʾˊ:Ljava/lang/String;

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ˎʾ:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/DialogPreference;->ʽᵔ:Ljava/lang/String;

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ˑˆ:Ljava/lang/CharSequence;

    iget v0, p1, Landroidx/preference/DialogPreference;->ˑ:I

    iput v0, p0, Lʻᐧ/ʼᐧ;->ˎˉ:I

    iget-object p1, p1, Landroidx/preference/DialogPreference;->ᐧﹶ:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lʻᐧ/ʼᐧ;->ﹳᵢ:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lʻᐧ/ʼᐧ;->ﹳᵢ:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ﾞˋ:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ˈـ:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ˎʾ:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ˑˆ:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lʻᐧ/ʼᐧ;->ˎˉ:I

    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->ﹳᵢ:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have any arguments."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ʾﾞ(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Lˑʼ/ʻٴ;->ʾﾞ(Landroid/os/Bundle;)V

    const-string v0, "PreferenceDialogFragment.title"

    iget-object v1, p0, Lʻᐧ/ʼᐧ;->ﾞˋ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.positiveText"

    iget-object v1, p0, Lʻᐧ/ʼᐧ;->ˈـ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.negativeText"

    iget-object v1, p0, Lʻᐧ/ʼᐧ;->ˎʾ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.message"

    iget-object v1, p0, Lʻᐧ/ʼᐧ;->ˑˆ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "PreferenceDialogFragment.layout"

    iget v1, p0, Lʻᐧ/ʼᐧ;->ˎˉ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ﹳᵢ:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public ˋـ(Landroid/view/View;)V
    .locals 2

    .prologue
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ˑˆ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final ˎʾ(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 p1, -0x2

    iput p1, p0, Lʻᐧ/ʼᐧ;->ᵢˋ:I

    new-instance p1, Lᵔᵢ/ᵎﹶ;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lᵔᵢ/ᵎﹶ;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ﾞˋ:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lᵔᵢ/ᵎﹶ;->setTitle(Ljava/lang/CharSequence;)Lᵔᵢ/ᵎﹶ;

    move-result-object p1

    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ﹳᵢ:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p1, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput-object v0, v1, Lᵔᵢ/ˈ;->ʽ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ˈـ:Ljava/lang/CharSequence;

    iput-object v0, v1, Lᵔᵢ/ˈ;->ᵎﹶ:Ljava/lang/CharSequence;

    iput-object p0, v1, Lᵔᵢ/ˈ;->ᵔᵢ:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ˎʾ:Ljava/lang/CharSequence;

    iput-object v0, v1, Lᵔᵢ/ˈ;->ʼˎ:Ljava/lang/CharSequence;

    iput-object p0, v1, Lᵔᵢ/ˈ;->ˆʾ:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lˑʼ/ᴵᵔ;->ʻʿ()Landroid/content/Context;

    iget v0, p0, Lʻᐧ/ʼᐧ;->ˎˉ:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lˑʼ/ᴵᵔ;->ٴﹳ:Landroid/view/LayoutInflater;

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lˑʼ/ʻٴ;->ʼـ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lˑʼ/ᴵᵔ;->ٴﹳ:Landroid/view/LayoutInflater;

    :cond_1
    invoke-virtual {v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lʻᐧ/ʼᐧ;->ˋـ(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lᵔᵢ/ᵎﹶ;->setView(Landroid/view/View;)Lᵔᵢ/ᵎﹶ;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lʻᐧ/ʼᐧ;->ˑˆ:Ljava/lang/CharSequence;

    iput-object v0, v1, Lᵔᵢ/ˈ;->ﾞᴵ:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, p1}, Lʻᐧ/ʼᐧ;->ᵔⁱ(Lᵔᵢ/ᵎﹶ;)V

    invoke-virtual {p1}, Lᵔᵢ/ᵎﹶ;->create()Lᵔᵢ/ᵔᵢ;

    move-result-object p1

    instance-of v0, p0, Lʻᐧ/ˈ;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3

    invoke-static {v0}, Lʻᐧ/ˉˆ;->ﹳٴ(Landroid/view/Window;)V

    return-object p1

    :cond_3
    move-object v0, p0

    check-cast v0, Lʻᐧ/ˈ;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lʻᐧ/ˈ;->ٴʿ:J

    invoke-virtual {v0}, Lʻᐧ/ˈ;->ٴʿ()V

    :cond_4
    return-object p1
.end method

.method public ᵔⁱ(Lᵔᵢ/ᵎﹶ;)V
    .locals 0

    return-void
.end method

.method public final ᵢˋ()Landroidx/preference/DialogPreference;
    .locals 3

    .prologue
    iget-object v0, p0, Lʻᐧ/ʼᐧ;->יˉ:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lˑʼ/ᴵᵔ;->ˊʻ:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lˑʼ/ᴵᵔ;->ᴵʼ(Z)Lˑʼ/ᴵᵔ;

    move-result-object v1

    check-cast v1, Lʻᐧ/ˏי;

    invoke-virtual {v1, v0}, Lʻᐧ/ˏי;->ﾞˋ(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Lʻᐧ/ʼᐧ;->יˉ:Landroidx/preference/DialogPreference;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have any arguments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lʻᐧ/ʼᐧ;->יˉ:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method public abstract ﹶʽ(Z)V
.end method
