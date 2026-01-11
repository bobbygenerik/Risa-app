.class public final Lᵎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎ/ˈ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Lˑʼ/ᵎˊ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lᵎ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lᵎ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    const-string v0, "androidx.savedstate.Restarter"

    invoke-virtual {p1, v0, p0}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    return-void
.end method

.method public constructor <init>(Lᵔᵢ/ˆʾ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lᵎ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Landroid/os/Bundle;
    .locals 3

    .prologue
    iget v0, p0, Lᵎ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lᵎ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᵔᵢ/ˆʾ;

    invoke-virtual {v1}, Lᵔᵢ/ˆʾ;->ˆʾ()Lᵔᵢ/ᵔʾ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    new-array v1, v0, [Lʻᵢ/ˑﹳ;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʻᵢ/ˑﹳ;

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ﹳٴ([Lʻᵢ/ˑﹳ;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lᵎ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :goto_0
    const-string v2, "classes_to_restore"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
