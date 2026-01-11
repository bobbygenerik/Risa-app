.class public final synthetic Lcom/google/android/gms/internal/measurement/ˎᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic ʽ:Ljava/lang/Runnable;

.field public final synthetic ⁱˊ:Landroid/net/Uri;

.field public final synthetic ﹳٴ:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˎᵎ;->ﹳٴ:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ˎᵎ;->ⁱˊ:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ˎᵎ;->ʽ:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/net/Uri;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ʾˏ;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˎᵎ;->ﹳٴ:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˎᵎ;->ⁱˊ:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ˎᵎ;->ʽ:Ljava/lang/Runnable;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ʾˏ;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
