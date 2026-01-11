.class public final Lˋˋ/ʽⁱ;
.super Lˋˋ/ˈˏ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lˋˋ/ʼˈ;

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>(Lˋˋ/ʼˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ʽⁱ;->ⁱˊ:Lˋˋ/ʼˈ;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˋˋ/ʽⁱ;->ﹳٴ:Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .prologue
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lˋˋ/ʽⁱ;->ﹳٴ:Z

    return-void
.end method

.method public final ﹳٴ(I)V
    .locals 0

    .prologue
    if-nez p1, :cond_0

    iget-boolean p1, p0, Lˋˋ/ʽⁱ;->ﹳٴ:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lˋˋ/ʽⁱ;->ﹳٴ:Z

    iget-object p1, p0, Lˋˋ/ʽⁱ;->ⁱˊ:Lˋˋ/ʼˈ;

    invoke-virtual {p1}, Lˋˋ/ʼˈ;->ﾞᴵ()V

    :cond_0
    return-void
.end method
