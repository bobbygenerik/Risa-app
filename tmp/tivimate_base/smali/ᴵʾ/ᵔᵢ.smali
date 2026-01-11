.class public abstract Lᴵʾ/ᵔᵢ;
.super Lᴵʾ/ʽ;
.source "SourceFile"

# interfaces
.implements Lˊʼ/ᵔᵢ;


# instance fields
.field public final ˈٴ:I


# direct methods
.method public constructor <init>(ILˈי/ˈ;)V
    .locals 0

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    iput p1, p0, Lᴵʾ/ᵔᵢ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lᴵʾ/ﹳٴ;->ʾˋ:Lˈי/ˈ;

    if-nez v0, :cond_0

    sget-object v0, Lˊʼ/ʽﹳ;->ﹳٴ:Lˊʼ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lˊʼ/ʻٴ;->ﹳٴ(Lˊʼ/ᵔᵢ;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lᴵʾ/ﹳٴ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()I
    .locals 1

    iget v0, p0, Lᴵʾ/ᵔᵢ;->ˈٴ:I

    return v0
.end method
