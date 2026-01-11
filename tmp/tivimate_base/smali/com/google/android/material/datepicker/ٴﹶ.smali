.class public final Lcom/google/android/material/datepicker/ٴﹶ;
.super Lˋˋ/ˈˏ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lcom/google/android/material/datepicker/ﾞʻ;

.field public final synthetic ﹳٴ:Lcom/google/android/material/datepicker/ʽﹳ;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/ﾞʻ;Lcom/google/android/material/datepicker/ʽﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/ٴﹶ;->ⁱˊ:Lcom/google/android/material/datepicker/ﾞʻ;

    iput-object p2, p0, Lcom/google/android/material/datepicker/ٴﹶ;->ﹳٴ:Lcom/google/android/material/datepicker/ʽﹳ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .prologue
    iget-object p1, p0, Lcom/google/android/material/datepicker/ٴﹶ;->ﹳٴ:Lcom/google/android/material/datepicker/ʽﹳ;

    iget-object p1, p1, Lcom/google/android/material/datepicker/ʽﹳ;->ˈ:Lcom/google/android/material/datepicker/ⁱˊ;

    iget-object p3, p0, Lcom/google/android/material/datepicker/ٴﹶ;->ⁱˊ:Lcom/google/android/material/datepicker/ﾞʻ;

    if-gez p2, :cond_0

    iget-object p2, p3, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊˊ()I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p3, Lcom/google/android/material/datepicker/ﾞʻ;->ʻʿ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->ˊﾞ()I

    move-result p2

    :goto_0
    iget-object v0, p1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, v0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance v2, Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-direct {v2, v0}, Lcom/google/android/material/datepicker/ᵔﹳ;-><init>(Ljava/util/Calendar;)V

    iput-object v2, p3, Lcom/google/android/material/datepicker/ﾞʻ;->ᵎʿ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, p3, Lcom/google/android/material/datepicker/ﾞʻ;->ﹶˎ:Lcom/google/android/material/button/MaterialButton;

    iget-object v3, p1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v3, v3, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-static {v3}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Ljava/util/Calendar;->add(II)V

    const/4 p2, 0x5

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Ljava/util/Calendar;->set(II)V

    invoke-static {v3}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x7

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {v3, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ᵢי;->ٴﹶ(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/ⁱˊ;->ʾˋ:Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈ(Lcom/google/android/material/datepicker/ᵔﹳ;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/ﾞʻ;->ˎˉ(I)V

    return-void
.end method
