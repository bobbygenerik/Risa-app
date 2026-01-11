.class public final Lʻᐧ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic ﹳٴ:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻᐧ/ʽʽ;->ﹳٴ:Landroidx/preference/SeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʻᐧ/ʽʽ;->ﹳٴ:Landroidx/preference/SeekBarPreference;

    if-eqz p3, :cond_1

    iget-boolean p3, v0, Landroidx/preference/SeekBarPreference;->ʽⁱ:Z

    if-nez p3, :cond_0

    iget-boolean p3, v0, Landroidx/preference/SeekBarPreference;->ʾˊ:Z

    if-nez p3, :cond_1

    :cond_0
    iget p2, v0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, v0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    if-eq p1, p2, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroidx/preference/SeekBarPreference;->ٴᵢ(IZ)V

    return-void

    :cond_1
    iget p1, v0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    add-int/2addr p2, p1

    iget-object p1, v0, Landroidx/preference/SeekBarPreference;->ʼـ:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lʻᐧ/ʽʽ;->ﹳٴ:Landroidx/preference/SeekBarPreference;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/preference/SeekBarPreference;->ʾˊ:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʻᐧ/ʽʽ;->ﹳٴ:Landroidx/preference/SeekBarPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/SeekBarPreference;->ʾˊ:Z

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget v3, v0, Landroidx/preference/SeekBarPreference;->ʽᵔ:I

    add-int/2addr v2, v3

    iget v4, v0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    if-eq v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    add-int/2addr p1, v3

    iget v2, v0, Landroidx/preference/SeekBarPreference;->ـᵎ:I

    if-eq p1, v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->ﹳٴ(Ljava/io/Serializable;)V

    invoke-virtual {v0, p1, v1}, Landroidx/preference/SeekBarPreference;->ٴᵢ(IZ)V

    :cond_0
    return-void
.end method
