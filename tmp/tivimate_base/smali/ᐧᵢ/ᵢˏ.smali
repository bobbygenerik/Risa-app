.class public final Lᐧᵢ/ᵢˏ;
.super Lˎᵢ/ᴵᵔ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lˊᐧ/ـˆ;

.field public ˈٴ:Ljava/io/IOException;

.field public final ᴵˊ:Lˎᵢ/ᴵᵔ;


# direct methods
.method public constructor <init>(Lˎᵢ/ᴵᵔ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ᵢˏ;->ᴵˊ:Lˎᵢ/ᴵᵔ;

    new-instance v0, Lᐧᵢ/ʼʼ;

    invoke-virtual {p1}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lᐧᵢ/ʼʼ;-><init>(Lᐧᵢ/ᵢˏ;Lˊᐧ/ᵔᵢ;)V

    new-instance p1, Lˊᐧ/ـˆ;

    invoke-direct {p1, v0}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    iput-object p1, p0, Lᐧᵢ/ᵢˏ;->ʽʽ:Lˊᐧ/ـˆ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵢˏ;->ᴵˊ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    return-void
.end method

.method public final ʽ()J
    .locals 2

    iget-object v0, p0, Lᐧᵢ/ᵢˏ;->ᴵˊ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ˉˆ()Lˊᐧ/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵢˏ;->ʽʽ:Lˊᐧ/ـˆ;

    return-object v0
.end method

.method public final ᵎﹶ()Lˎᵢ/ﹳᐧ;
    .locals 1

    iget-object v0, p0, Lᐧᵢ/ᵢˏ;->ᴵˊ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ᵎﹶ()Lˎᵢ/ﹳᐧ;

    move-result-object v0

    return-object v0
.end method
