.class public final Lcom/google/android/gms/internal/play_billing/ﹳᐧ;
.super Lcom/google/android/gms/internal/play_billing/יـ;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:I

.field public final transient ˈٴ:I

.field public final synthetic ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/יـ;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ʽʽ:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ˈٴ:I

    invoke-static {p1, v0}, Lcom/bumptech/glide/ˈ;->ᵔי(II)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ʽʽ:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ˈٴ:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᵔᵢ(II)Lcom/google/android/gms/internal/play_billing/יـ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼᐧ;->ˈ()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ʽʽ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final ᵎﹶ()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼᐧ;->ᵎﹶ()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔᵢ(II)Lcom/google/android/gms/internal/play_billing/יـ;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ˈٴ:I

    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/ˈ;->ᵔٴ(III)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ʽʽ:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/יـ;->ᵔᵢ(II)Lcom/google/android/gms/internal/play_billing/יـ;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʼᐧ;->ˈ()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ʽʽ:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/ﹳᐧ;->ˈٴ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
