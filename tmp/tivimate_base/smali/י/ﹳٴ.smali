.class public final Lי/ﹳٴ;
.super Landroidx/leanback/widget/ʿ;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Landroidx/leanback/widget/picker/Picker;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/Picker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lי/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/picker/Picker;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;Lˋˋ/ʼـ;I)V
    .locals 2

    .prologue
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    iget-object v0, p0, Lי/ﹳٴ;->ﹳٴ:Landroidx/leanback/widget/picker/Picker;

    iget-object v1, v0, Landroidx/leanback/widget/picker/Picker;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/picker/Picker;->ᵔᵢ(I)V

    if-eqz p2, :cond_0

    iget-object p2, v0, Landroidx/leanback/widget/picker/Picker;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lי/ˈ;

    iget p2, p2, Lי/ˈ;->ⁱˊ:I

    add-int/2addr p2, p3

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/picker/Picker;->ʽ(II)V

    :cond_0
    return-void
.end method
