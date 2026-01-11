.class public Lᵔᵢ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Lᵔᵢ/ˈ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lᵔᵢ/ᵔᵢ;->ˑﹳ(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lᵔᵢ/ᵎﹶ;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᵔᵢ/ˈ;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lᵔᵢ/ᵔᵢ;->ˑﹳ(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lᵔᵢ/ˈ;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput p2, p0, Lᵔᵢ/ᵎﹶ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public create()Lᵔᵢ/ᵔᵢ;
    .locals 12

    .prologue
    new-instance v0, Lᵔᵢ/ᵔᵢ;

    iget-object v2, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iget-object v1, v2, Lᵔᵢ/ˈ;->ﹳٴ:Landroid/view/ContextThemeWrapper;

    iget-object v3, v2, Lᵔᵢ/ˈ;->ﹳٴ:Landroid/view/ContextThemeWrapper;

    iget v4, p0, Lᵔᵢ/ᵎﹶ;->ⁱˊ:I

    invoke-direct {v0, v1, v4}, Lᵔᵢ/ᵔᵢ;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object v1, v2, Lᵔᵢ/ˈ;->ˑﹳ:Landroid/view/View;

    iget-object v7, v0, Lᵔᵢ/ᵔᵢ;->ˊʻ:Lᵔᵢ/ﾞᴵ;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    iput-object v1, v7, Lᵔᵢ/ﾞᴵ;->ـˆ:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lᵔᵢ/ˈ;->ˈ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput-object v1, v7, Lᵔᵢ/ﾞᴵ;->ˈ:Ljava/lang/CharSequence;

    iget-object v4, v7, Lᵔᵢ/ﾞᴵ;->ʽﹳ:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v2, Lᵔᵢ/ˈ;->ʽ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iput-object v1, v7, Lᵔᵢ/ﾞᴵ;->יـ:Landroid/graphics/drawable/Drawable;

    iget-object v4, v7, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v7, Lᵔᵢ/ﾞᴵ;->ˏי:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v1, v2, Lᵔᵢ/ˈ;->ﾞᴵ:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iput-object v1, v7, Lᵔᵢ/ﾞᴵ;->ˑﹳ:Ljava/lang/CharSequence;

    iget-object v4, v7, Lᵔᵢ/ﾞᴵ;->ʻٴ:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v2, Lᵔᵢ/ˈ;->ᵎﹶ:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    iget-object v5, v2, Lᵔᵢ/ˈ;->ᵔᵢ:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v4, v1, v5}, Lᵔᵢ/ﾞᴵ;->ʽ(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v1, v2, Lᵔᵢ/ˈ;->ʼˎ:Ljava/lang/CharSequence;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, -0x2

    iget-object v5, v2, Lᵔᵢ/ˈ;->ˆʾ:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v4, v1, v5}, Lᵔᵢ/ﾞᴵ;->ʽ(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v1, v2, Lᵔᵢ/ˈ;->ﾞʻ:[Ljava/lang/CharSequence;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_6

    iget-object v1, v2, Lᵔᵢ/ˈ;->ˉʿ:Ljava/lang/Object;

    if-eqz v1, :cond_e

    :cond_6
    iget-object v1, v2, Lᵔᵢ/ˈ;->ⁱˊ:Landroid/view/LayoutInflater;

    iget v4, v7, Lᵔᵢ/ﾞᴵ;->ʾˋ:I

    invoke-virtual {v1, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v2, Lᵔᵢ/ˈ;->ᵔﹳ:Z

    if-eqz v1, :cond_7

    new-instance v1, Lᵔᵢ/ﹳٴ;

    iget v4, v7, Lᵔᵢ/ﾞᴵ;->ᴵˊ:I

    iget-object v5, v2, Lᵔᵢ/ˈ;->ﾞʻ:[Ljava/lang/CharSequence;

    invoke-direct/range {v1 .. v6}, Lᵔᵢ/ﹳٴ;-><init>(Lᵔᵢ/ˈ;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_5

    :cond_7
    iget-boolean v1, v2, Lᵔᵢ/ˈ;->ﹳᐧ:Z

    if-eqz v1, :cond_8

    iget v1, v7, Lᵔᵢ/ﾞᴵ;->ʽʽ:I

    goto :goto_3

    :cond_8
    iget v1, v7, Lᵔᵢ/ﾞᴵ;->ˈٴ:I

    :goto_3
    iget-object v4, v2, Lᵔᵢ/ˈ;->ˉʿ:Ljava/lang/Object;

    if-eqz v4, :cond_9

    :goto_4
    move-object v1, v4

    goto :goto_5

    :cond_9
    new-instance v4, Lᵔᵢ/ˑﹳ;

    const v5, 0x1020014

    iget-object v11, v2, Lᵔᵢ/ˈ;->ﾞʻ:[Ljava/lang/CharSequence;

    invoke-direct {v4, v3, v1, v5, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    :goto_5
    iput-object v1, v7, Lᵔᵢ/ﾞᴵ;->ʾᵎ:Landroid/widget/ListAdapter;

    iget v1, v2, Lᵔᵢ/ˈ;->יـ:I

    iput v1, v7, Lᵔᵢ/ﾞᴵ;->ʼʼ:I

    iget-object v1, v2, Lᵔᵢ/ˈ;->ᵔʾ:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_a

    new-instance v1, Lᵔᵢ/ⁱˊ;

    invoke-direct {v1, v2, v7}, Lᵔᵢ/ⁱˊ;-><init>(Lᵔᵢ/ˈ;Lᵔᵢ/ﾞᴵ;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_6

    :cond_a
    iget-object v1, v2, Lᵔᵢ/ˈ;->ˏי:Lʻᐧ/ˆʾ;

    if-eqz v1, :cond_b

    new-instance v1, Lᵔᵢ/ʽ;

    invoke-direct {v1, v2, v6, v7}, Lᵔᵢ/ʽ;-><init>(Lᵔᵢ/ˈ;Landroidx/appcompat/app/AlertController$RecycleListView;Lᵔᵢ/ﾞᴵ;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    :goto_6
    iget-boolean v1, v2, Lᵔᵢ/ˈ;->ﹳᐧ:Z

    if-eqz v1, :cond_c

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_7

    :cond_c
    iget-boolean v1, v2, Lᵔᵢ/ˈ;->ᵔﹳ:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_d
    :goto_7
    iput-object v6, v7, Lᵔᵢ/ﾞᴵ;->ﾞᴵ:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_e
    iget-object v1, v2, Lᵔᵢ/ˈ;->ˉˆ:Landroid/view/View;

    if-eqz v1, :cond_f

    iput-object v1, v7, Lᵔᵢ/ﾞᴵ;->ᵎﹶ:Landroid/view/View;

    iput-boolean v8, v7, Lᵔᵢ/ﾞᴵ;->ᵔᵢ:Z

    :cond_f
    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v2, Lᵔᵢ/ˈ;->ٴﹶ:Lᵔʾ/ٴﹶ;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_10
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iget-object v0, v0, Lᵔᵢ/ˈ;->ﹳٴ:Landroid/view/ContextThemeWrapper;

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lᵔᵢ/ᵎﹶ;
    .locals 2

    iget-object v0, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iget-object v1, v0, Lᵔᵢ/ˈ;->ﹳٴ:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lᵔᵢ/ˈ;->ʼˎ:Ljava/lang/CharSequence;

    iput-object p2, v0, Lᵔᵢ/ˈ;->ˆʾ:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lᵔᵢ/ᵎﹶ;
    .locals 2

    iget-object v0, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iget-object v1, v0, Lᵔᵢ/ˈ;->ﹳٴ:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lᵔᵢ/ˈ;->ᵎﹶ:Ljava/lang/CharSequence;

    iput-object p2, v0, Lᵔᵢ/ˈ;->ᵔᵢ:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lᵔᵢ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput-object p1, v0, Lᵔᵢ/ˈ;->ˈ:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lᵔᵢ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ᵎﹶ;->ﹳٴ:Lᵔᵢ/ˈ;

    iput-object p1, v0, Lᵔᵢ/ˈ;->ˉˆ:Landroid/view/View;

    return-object p0
.end method
