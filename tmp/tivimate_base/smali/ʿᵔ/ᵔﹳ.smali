.class public final Lʿᵔ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final ʾˋ:Lʽʿ/ʻٴ;


# direct methods
.method public constructor <init>(Lʽʿ/יـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵔ/ᵔﹳ;->ʾˋ:Lʽʿ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lʿᵔ/ᵔﹳ;->ʾˋ:Lʽʿ/ʻٴ;

    invoke-interface {v0, p1, p2}, Lʽʿ/ʻٴ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
