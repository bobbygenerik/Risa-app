.class public final Lcom/google/android/material/datepicker/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ʽʽ:Lcom/google/android/material/datepicker/ﾞʻ;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lcom/google/android/material/datepicker/ʽﹳ;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/ﾞʻ;Lcom/google/android/material/datepicker/ʽﹳ;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ʾˋ:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ʽʽ:Lcom/google/android/material/datepicker/ﾞʻ;

    iput-object p2, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ᴵˊ:Lcom/google/android/material/datepicker/ʽﹳ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    iget p1, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ʾˋ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ʽʽ:Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object v0, p1, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊˊ()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ᴵˊ:Lcom/google/android/material/datepicker/ʽﹳ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/ᵔﹳ;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/ﾞʻ;->ˈـ(Lcom/google/android/material/datepicker/ᵔﹳ;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ʽʽ:Lcom/google/android/material/datepicker/ﾞʻ;

    iget-object v0, p1, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊﾞ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/material/datepicker/ﾞᴵ;->ᴵˊ:Lcom/google/android/material/datepicker/ʽﹳ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v1, v1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/ᵔﹳ;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/ﾞʻ;->ˈـ(Lcom/google/android/material/datepicker/ᵔﹳ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
